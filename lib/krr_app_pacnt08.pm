package krr_app_pacnt08;
use strict;
use warnings;
use utf8;
#binmode(STDIN,  ':utf8');
#binmode(STDOUT, ':utf8');
#binmode(STDERR, ':utf8');
use Encode;

use parent qw/Plack::Middleware/;
use parent qw(Plack::App::File);
use Plack::Response;
use Plack::Request;
use Plack::Util::Accessor qw( conf );
use Plack::Util;
use mssql;

use POSIX ('strftime');
use HTML::Entities;
use Data::Dumper;


sub call {
    my ($self, $env) = @_;

    $self->{log} = LOG->new();

	$self->{sql} = mssql->new($self->conf->{mssql}, undef);

    my $req = Plack::Request->new($env);

    my $root_url = $env->{SCRIPT_NAME};

    my $res = Plack::Response->new;

    my $path_info = $req->path_info;

    my $path_tpl = "public/tpl/krr_app_pacnt08";

    my $url = $self->get_url($path_info);

    my $param = $req->parameters->as_hashref || undef;# if defined( $req->parameters->as_hashref );

        if ( grep {defined($_)} %{$param} ) {
            $self->save_sql($self->get_post($param), $env);
            return $self->return_redirect($res, $path_info);
        }

        my $tpl = $self->get_header($url, $path_tpl);
		
		$tpl = $self->read_template($path_tpl, "frame") if $url->{url} eq 'main';

#        $tpl .= $self->read_template($path_tpl, "menu");
#        my $menu = $self->get_menu;
#        $tpl =~ s/\|menu\|/$menu/;

        $tpl .= $self->read_template($path_tpl, "body");

        my $node;
		if ( $url->{url} eq 'tree' ) {
			$node .= $self->read_template($path_tpl, 'tree');
			$node .= $self->get_tree;
		}
		$node .= decode_utf8($self->read_template($path_tpl, 'start')) if $url->{url} eq 'start';

        $tpl = sprintf  encode_utf8($tpl), encode_utf8($node);
        $tpl .= $self->read_template($path_tpl, "footer") if $url->{url} ne 'main';


        my $year = strftime("%Y", localtime time());
        $tpl =~ s/\|host\|/$env->{HTTP_HOST}/g;
        $tpl =~ s/\|year\|/$year/g;

		my $page = $tpl;

            return [
                200,
                    [   'Content-Type'   => 'text/html; charset=utf8' ],
                    [   $page   ]
            ];
#    } else {
#        return $self->SUPER::return_404();
#        return $self->return_404($url, $path_tpl);
#    }
#    $res->redirect($root_url);
#    return $res->finalize;
}


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


sub get_menu {
    my($self) = @_;

    my $menu;

    my $query = "select * from $self->conf->{mssql}->{table} where hidden = 0 order by level asc";
    my $result = $self->{sql}->select_sql( $query );

    foreach (@$result) {
        $menu .= "<li><a href=\"|root_url|$_->{link_path}\">$_->{menu_name}</a></li>\n" if $_->{menu_type} eq 'main';
    }

    $menu .= $self->get_menu_dropdown($result);

#    print STDERR Dumper($result);
    return $menu;
}


sub get_url {
    my($self, $path_info) = @_;

    my %url;
    @url{'url', 'id', 'action' } = ($path_info =~ m!\w+!g);

    $url{url} ||= 'main';

    if ( defined($url{id}) ) {
        undef $url{id} unless ($url{id} =~ /^\d+$/);
    } else { $url{id} = undef };

    if ( defined($url{action}) ) {
        undef $url{action} unless ($url{action} =~ /^(edit)+$/);
    } else { $url{action} = undef };

#    print STDERR Dumper(\%url);
    return \%url;
}


sub get_header {
    my ($self, $url, $path_tpl) = @_;

#    my ($title, $keywords, $description) = $self->get_metatag($url);

    my $tpl = $self->read_template($path_tpl, "header");
	
	my $title = 'Визуализация | Отчёты | СВИСОП ДАТП';

    $tpl =~ s/\|title\|/$title/;
    $tpl =~ s/\|keywords\|//;
    $tpl =~ s/\|description\|//;
    $tpl =~ s/\|author\|//;

    return $tpl;
}


sub return_404 {
    my ($self, $url, $path_tpl) = @_;

    my $tpl = $self->get_header($url, $path_tpl);
    $tpl .= $self->read_template($path_tpl, "404");
    $tpl .= "    </body>\n</html>\n";
    return [404, [ 'Content-Type'   => 'text/html; charset=utf8' ], [ $tpl ]];
}


sub get_post {
    my($self, $post) = @_;

    my %result;
    foreach my $key ( keys %{$post} ) {
#        print STDERR "key | $key | value | $post->{$key}\n";
#        @result{'nid', 'level', 'fcid'} = ($key =~ m!([\w]+)!g);
        (   $result{$key}{'field'},
            $result{$key}{'nid'},
            $result{$key}{'level'},
            $result{$key}{'fcid'} ) = ($key =~ m!([\w]+)!g);
            $result{$key}{'value'} = $post->{$key};
    }
#print STDERR $k." - k\n";
#@post{'one', 'two'} = ($k =~ m!([\w]+)!g);
#print STDERR Dumper($post);
#print STDERR Dumper(\%result);
    return \%result;
}


sub return_redirect {
    my($self, $res, $path_info) = @_;
    $res->redirect( $path_info );
    return $res->finalize;
}


sub get_tree {
	my($self) = @_;

    my $query = 'WITH tree (id, parent, level, name, type, link, rn) as ';
	$query .= '( ';
	$query .= 'SELECT id, parent, 0 as level, name, type, link, ';
    $query .= 'convert(varchar(max),right(row_number() over (order by id),10)) rn ';
	$query .= 'FROM menu ';
	$query .= 'WHERE parent is null ';
	$query .= 'UNION ALL ';
	$query .= 'SELECT c2.id, c2.parent, tree.level + 1, c2.name, c2.type, c2.link, ';
	$query .= 'rn + \'/\' + convert(varchar(max),right(row_number() over (order by tree.id),10)) ';
	$query .= 'FROM [KRR-PA-DEV-Development]..menu c2 ';
    $query .= 'INNER JOIN tree ON tree.id = c2.parent ';
	$query .= ') ';
	$query .= 'SELECT * FROM tree order by rn ';

    my $result = $self->{sql}->select_sql( $query );
#	print STDERR Dumper( $result);

	my $menu = '<div id="menu1">'."\n";
	$menu .= '<ul>'."\n";

	foreach (@$result) {
		if ( $_->{level} == 0 ) {
			if ( $_->{type} eq 'folder' ) {
				#$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{rn} | level = $_->{level}"."\n";
				$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{name}"."\n";
				$menu .= '<ul>'."\n";
			}
			$menu .= $self->get_folder($result, $_->{id}) || '';
			$menu .= $self->get_node($result, $_->{id}) || '';
			$menu .= '</ul>'."\n" if ( $_->{type} eq 'folder' );
		}
	}

	$menu .= '</ul>'."\n";
	$menu .= '</div>'."\n";
	$menu .= '<script>'."\n";
    $menu .= ' $(\'#menu1\').easytree(); '."\n";
	$menu .= '</script>'."\n";
	$menu .= '</div>'."\n";

	print STDERR $menu."\n";
	return $menu;
}

sub get_folder {
	my($self, $data, $parent) = @_;
	
	my $menu;
	
	foreach (@$data) {
		$_->{parent} ||= -1;
		if ( $_->{type} eq 'folder' and $_->{parent} == $parent ) {
			#$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{rn} | level = $_->{level}"."\n";
			$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{name}"."\n";
			
			$menu .= '<ul>'."\n";
			$menu .= $self->get_folder($data, $_->{id}) || '';
			$menu .= '</ul>'."\n";
			
			$menu .= '<ul>'."\n";
			$menu .= $self->get_node($data, $_->{id});
			$menu .= '</ul>'."\n";
#			$menu .= '<ul>'."\n";
#			$menu .= $self->get_folder($data, $_->{id}) || '';
#			$menu .= '</ul>'."\n";
		}
	}
	return $menu;
}

sub get_node {
	my($self, $data, $parent) = @_;
	
	my $menu;

	foreach (@$data) {
		$_->{parent} ||= -1;
		if (  $_->{type} eq 'node' and $_->{parent} == $parent ) {
			#$menu .=  "<li><a href=\"".decode_entities( $_->{link} )."\" target=\"rightside\">Go to $_->{rn} | level = $_->{level}</a></li>"."\n";
			$menu .=  "<li><a href=\"". encode_entities( $_->{link} ) ."\" target=\"rightside\"> $_->{name}</a></li>"."\n";
		}
	}	
	return $menu;
}

1;


