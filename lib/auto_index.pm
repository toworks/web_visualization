package auto_index;
use lib ".";
use utf8;
use Encode;
use parent qw(Plack::App::File);
use strict;
use warnings;
no warnings 'experimental::smartmatch';
use Plack::Util;
use POSIX ('strftime');
use HTTP::Date;
use Plack::MIME;
use DirHandle;
use URI::Escape;
use Plack::Request;
use Data::Dumper;
use File::MMagic;




# Stolen from rack/directory.rb
sub read_template {
    my($self, $path, $type) = @_;

    my $tpl;

    eval{   open(my $fh, "<$path/$type.tpl") || die $!;
            $tpl = do { local $/; <$fh> };
            close($fh) || die $!;
    };
    if($@) { $self->{log}->save('e', "$@"); }

    return $tpl;
}

sub get_node {
    my($self, @row) = @_;

    if ( ! $row[0] ) {
        @row = map { s/^(?=\w)/\<h4\>/;
                     s/(?<=\w)$/\<\/h4\>/;
                     join "\n", $_;
        } @row;
    }

    my $page_tpl = <<PAGE;
    <div class="row">
      <div class="col-xs-6 col-sm-6 col-md-6 col-lg-6">
        <a href="$row[0]">$row[1]</a>
      </div>
      <div class="col-xs-1 col-sm-1 col-md-1 col-lg-1">
        $row[2]
      </div>
      <div class="col-xs-2 col-sm-2 col-md-2 col-lg-2">
        $row[3]
      </div>
      <div class="col-xs-3 col-sm-3 col-md-3 col-lg-3">
        $row[4]
      </div>
    </div>
PAGE
#    $self->{log}->save('e', $page_tpl);
    if ( ! $row[0] ) {
        $page_tpl = join "\n", map { s/\<a(.*)""\>//;
                                     s/\<\/a\>//;
                                     join "\n", $_; } split "\n", $page_tpl;
    }
    return $page_tpl;
}


sub should_handle {
    my($self, $file) = @_;
    $file = decode_utf8($file) if utf8::is_utf8($file);
    return -d $file || -f $file;
}

sub locate_file {
    my($self, $env) = @_;

    my $path = $env->{PATH_INFO} || '';
    if ($path =~ /\0/) {
        return $self->SUPER::return_400;
    }

    my $docroot = $self->root || ".";
    my @path = split /[\\\/]/, $path, -1; # -1 *MUST* be here to avoid security issues!
    if (@path) {
        shift @path if $path[0] eq '';
    } else {
        @path = ('.');
    }

    if (grep /^\.{2,}$/, @path) {
        return $self->SUPER::return_403;
    }

    my($file, @path_info);
    while (@path) {
        my $try = File::Spec::Unix->catfile($docroot, @path);
        if ($self->should_handle($try)) {
            $file = $try;
            last;
        } elsif (!$self->SUPER::allow_path_info) {
            last;
        }
        unshift @path_info, pop @path;
    }

    $file = decode_utf8($file) if utf8::is_utf8($file);
    if (!$file) {
        return $self->SUPER::return_404;
    }

    if (!-r $file) {
        return $self->SUPER::return_403;
    }

    $file = encode_utf8($file);# if ! utf8::is_utf8($file);
    return $file, join("/", "", @path_info);
}

sub return_dir_redirect {
    my ($self, $env) = @_;
    my $uri = Plack::Request->new($env)->uri;
    return [ 301,
        [
            'Location' => $uri . '/',
            'Content-Type' => 'text/plain',
            'Content-Length' => 8,
        ],
        [ 'Redirect' ],
    ];
}

sub serve_path {
    my($self, $env, $dir, $fullpath) = @_;

    if (-f $dir) {
        return $self->SUPER::serve_path($env, $dir, $fullpath);
    }

    my $dir_url = $env->{SCRIPT_NAME} . $env->{PATH_INFO};
    if ($dir_url !~ m{/$}) {
        return $self->return_dir_redirect($env);
    }

    my @files = ([ "../", "Parent Directory", '', '', '' ]);
    my $dh = DirHandle->new($dir);
    my @children;
    while (defined(my $ent = $dh->read)) {
        next if $ent eq '.' or $ent eq '..';
        push @children, $ent;
    }

    for my $basename (sort { $a cmp $b } @children) {
        my $file = "$dir/$basename";
        my $url = $dir_url . $basename;

        my $is_dir = -d $file;
        my @stat = stat _;

        $url = join '/', map {uri_escape($_)} split m{/}, $url;

        if ($is_dir) {
            $basename .= "/";
            $url      .= "/";
        }

        my $mm = new File::MMagic;
        Plack::MIME->add_type( ".7z" => "application/x-7zip",
                               ".txz" => "application/x-xz",
                               ".mkv" => "video/x-matroska",
                               ".ac3" => "audio/ac3",
                              );

        my $mime_type = $is_dir ? 'directory' : ( Plack::MIME->mime_type($file) || 'text/plain' );
#        my $mime_type = $is_dir ? 'directory' : ( $mm->checktype_filename($file) || 'text/plain' );

        if ( ! grep { "$basename" ~~ /(^\.)|($_)\//g } @{$self->{denied}} ) {
            $basename = decode_utf8($basename) if ! utf8::is_utf8($basename);
            push @files, [ $url, $basename, $self->get_size($stat[7], $basename), $mime_type, strftime("%Y-%m-%d %H:%M:%S", localtime $stat[9]) ];
        }
    }

    my $page = $self->prepare_files($env, @files);

    return [ 200, ['Content-Type' => 'text/html; charset=utf8'], [ $page ] ];
}


sub prepare_files {
    my($self, $env, @files) = @_;

    my $path  = Plack::Util::encode_html("Index of $env->{PATH_INFO}");
    $path = decode_utf8($path) if ! utf8::is_utf8($path);

    my $files = join "\n", map {
        my $f = $_;
        $self->get_node( map Plack::Util::encode_html($_), @$f );
    } @files;

    splice @files;

    $self->get_page($env, $files, $path);
}


sub get_page {
    my($self, $env, $files, $path, $query_search) = @_;

    my $page = $files;

    my $root_url = '/';
    my $path_tpl = "public/tpl/files";

    my $tpl = $self->read_template($path_tpl, "header");
    $tpl = sprintf $tpl, $path;
    $tpl .= $self->read_template($path_tpl, "menu");
    $tpl .= $self->read_template($path_tpl, "body");

    $tpl =~ s/\<form(.*)form\>//ms if ('/last' ne $env->{PATH_INFO});

    my $table_head = $self->get_node( '', 'Name', 'Size', 'Type', 'Last Modified' );

    my $node = <<HEADER;
        <div class="page-header">
          <h2> $path </h2>
          $table_head
        </div>
HEADER

print STDERR "ssss\n" unless defined $files;

    if ($files eq '') { $node .= '<div class="alert alert-warning text-center" role="alert">по вашему запросу <mark>'.$query_search.'</mark> ничего не найдено</div>'; }

    $node .= $files;
    $node .= '<hr class="divider"></hr>';

    $tpl = sprintf $tpl, $node;

    $tpl .= $self->read_template($path_tpl, "footer");

    my $year = strftime("%Y", localtime time());
    $tpl =~ s/\|host\|/$env->{HTTP_HOST}/g;
    $tpl =~ s/\|year\|/$year/g;

    $tpl =~ s/\|root_url\|/$root_url/g;

    return $tpl;
}

sub get_size {
    my($self, $stat, $basename) = @_;
    my @metrics;
    $metrics[0] = 'B';
    $metrics[1] = 'K';
    $metrics[2] = 'M';
    $metrics[3] = 'G';
    $metrics[4] = 'T';

    my $metric = 0;
    while(int(($stat/1024)) > 0) {
        ++$metric;
        $stat /= 1024;
    }

    my $ret;

    if ( $metric <= 1 ) {
        $ret =  sprintf("%.d".scalar $metrics[$metric], ($stat));
    } else {
        $ret =  sprintf("%.1f".scalar $metrics[$metric], ($stat));
    }

    if ( "$basename" =~ m{/$} ) { $ret =  "-"; }
    return $ret || 0;
}

1;

__END__

=head1 NAME

Plack::App::Directory - Serve static files from document root with directory index

=head1 SYNOPSIS

  # app.psgi
  use Plack::App::Directory;
  my $app = Plack::App::Directory->new({ root => "/path/to/htdocs" })->to_app;

=head1 DESCRIPTION

This is a static file server PSGI application with directory index a la Apache's mod_autoindex.

=head1 CONFIGURATION

=over 4

=item root

Document root directory. Defaults to the current directory.

=back

=head1 AUTHOR

Tatsuhiko Miyagawa

=head1 SEE ALSO

L<Plack::App::File>

=cut
