package krr_app_pacnt08;
use strict;
use warnings;
use parent qw/Plack::Middleware/;
use parent qw(Plack::App::File);
use Plack::Response;
use Plack::Request;
use Plack::Util::Accessor qw( conf );
use Plack::Util;
use mssql;

#use utf8;
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
#        $node .= $self->get_main if $url->{url} eq 'main';
#        $node .= $self->get_news if $url->{url} eq 'news';
#        $node .= $self->get_board($url, $path_tpl) if $url->{url} =~ m!^board$!;
        $node .= $self->read_template($path_tpl, "tree") if $url->{url} eq 'tree';
		$node .= $self->get_tree;

#        $node .= '<div class="text-center" id="timestamp"><p><h4><span class="label label-info">'. strftime("%A %d %B %Y %H:%M:%S", localtime time()) .'</span></h4></p></div>';
        $tpl = sprintf $tpl, $node;
        $tpl .= $self->read_template($path_tpl, "footer") if $url->{url} ne 'main';


        my $year = strftime("%Y", localtime time());
        $tpl =~ s/\|host\|/$env->{HTTP_HOST}/g;
        $tpl =~ s/\|year\|/$year/g;
=comm
        $tpl =~ s/\|root_url\|/$root_url/g;

        my $page = join "\n", map { s/dropdown\"\>/active dropdown\"\>/ if $url->{url} eq 'tools';# при добавлении локального меню надо пересмотреть работу
#print STDERR $path_info."|"."$_\n\n" if /(\"\/vlan0\")/;
                                    s/\<li\>/\<li\ class\=\"active\"\>/ if /(\"$path_info\")/;
                         join "\n", $_;
                       } split "\n", $tpl;
=cut
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

    my $query = 'select * from menu where hidden = 0 order by level asc';
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


sub get_url_check {
    my($self, $url) = @_;

    my $query = "select * from pages p ";
    $query .= "join node n ";
    $query .= "on p.id = n.id_page ";
    $query .= "where p.url = '". $url->{url} ."' ";
    $query .= "and p.type = 'single' " unless defined($url->{id});
    $query .= "and n.nid = $url->{id} " if defined($url->{id});

    my $result = $self->{sql}->select_sql($query);

#print STDERR (grep {defined($_)} @{$result}) ? 'true1' : 'false1';
#print STDERR "\n";
#if ( grep {defined($_)} @{$result} ) { $result = 'true'; } else { $result = 'false'; };
#    if ( grep {defined($_)} @{$result} ) { $result = 'true' }else{ $result = 'false'}
#print STDERR Dumper($result);
#    return $result;
    return (grep {defined($_)} @{$result}) ? 'true' : 'false';
}


sub get_metatag {
    my($self, $url) = @_;

    my $query = "select * from pages p join metatag m on p.id = m.pid where p.url = '$url->{url}'";
    my $result = $self->{sql}->select_sql($query);

#    print STDERR Dumper($result);

    return ('404 Not Found', 'Oops!', '404 Not Found') unless grep {defined($_)} @{$result};
#    print STDERR @{$result}[0]->{title};
#    print STDERR Dumper($result);
    return ( @{$result}[0]->{title}, @{$result}[0]->{keywords}, @{$result}[0]->{description} );
}


sub get_main {
    my($self, $url) = @_;

    my $query = "select * from node n ";
    $query .= "JOIN pages p  ";
    $query .= "on p.id = n.id_page ";
    $query .= "LEFT JOIN field_data fd ";
    $query .= "on n.nid = fd.nid ";
    $query .= "LEFT JOIN field_config fc ";
    $query .= "on fc.id = fd.fcid ";
    $query .= "where fc.active = 1 ";
    $query .= "and p.url = 'main' ";
    $query .= "order by fd.level asc";
    my $result = $self->{sql}->select_sql($query);

    my $main;

    $main .= '<div class="jumbotron"><h1>' . @{$result}[0]->{title} .'</h1>'; 
    $main .= @{$result}[0]->{value} .'</div>';
#    $main .= @{$result}[1]->{value} .'</div>';

    foreach (@$result) {
        $main .= $_->{value} if $_->{level} > 1;
    }

#    print STDERR @{$result}[0]->{title};
#    print STDERR Dumper($result);
    return ( $main );
}


sub get_news {
    my($self, $url) = @_;

    my $query = "select fd.*, n.*, p.* from node n ";
    $query .= "JOIN pages p  ";
    $query .= "on p.id = n.id_page ";
    $query .= "LEFT JOIN field_data fd on n.nid=fd.nid ";
    $query .= "LEFT JOIN field_config fc on fc.id=fd.fcid ";
    $query .= "where fc.sticky = 1 ";
    $query .= "order by n.changed desc";
    my $result = $self->{sql}->select_sql($query);

    my $main;

#    $main .= '<div class="jumbotron"><h1>' . @{$result}[0]->{title} .'</h1>'; 
#    $main .= @{$result}[0]->{value} .'</div>';
#    $main .= @{$result}[1]->{value} .'</div>';

    $main .= '<div><h1>News</h1></div>';

    $main .= "<div class=\"media\">\n";
    foreach (@$result) {
        $main .= "<hr class=\"divider\">\n";
        $main .= "<div class=\"media-body\"><h3>".$_->{title}."</h3>\n";
        $main .= "<h5><small><i class=\"fa fa-calendar fa-lg\"></i>&nbsp; ". strftime("%d %b %Y %H:%M:%S", localtime $_->{changed}) ."</small></h5>\n";
        $main .= decode_entities( $_->{value}) ."\n";
        $main .= "<p><a href=".$_->{url}."/".$_->{nid}." type=\"button\" class=\"btn btn-success pull-right\">Read More</a></p>\n";
        $main .= "</div>\n";
    }
    $main .= "</div>\n";

#    print STDERR @{$result}[0]->{title};
#    print STDERR Dumper($result);
    return ( $main );
}


sub get_board {
    my($self, $url, $path_tpl) = @_;

#    print STDERR Dumper($url);
    return '' unless defined($url->{id});
#     print STDERR Dumper( $self->return_404($url, $path_tpl) );

    my $query = "select * from node n ";
    $query .= "JOIN pages p ";
    $query .= "on p.id = n.id_page ";
    $query .= "LEFT JOIN field_data fd ";
    $query .= "on n.nid=fd.nid ";
    $query .= "LEFT JOIN field_config ";
    $query .= "fc on fc.id=fd.fcid ";
    $query .= "where fc.active = 1 ";
    $query .= "and n.nid = $url->{id} ";
    $query .= "and p.url = '$url->{url}' ";# unless defined($url->{id});
    $query .= "order by fd.level asc";
    my $result = $self->{sql}->select_sql($query);

    my $main;

    $main .= "<link href=\"/styles/prism/css/prism.css\" rel=\"stylesheet\" type=\"text/css\" />\n";
    $main .= "<script src=\"/styles/prism/js/prism.js\"></script>\n";

    $main .= "<div class=\"row\">\n";
    $main .= "<div class=\"col-md-2\"></div>\n";
    $main .= "<div class=\"col-md-8\">\n";
    $main .= "<h2>". @{$result}[0]->{title} ."</h2>\n";
#    $main .= '<p class="text-left" id="timestamp"><h5><span class="label label-info">'. strftime("%d %b %Y %H:%M:%S", localtime $_->{changed}) .'</span></h5></p>';
    $main .= "<h5><small><i class=\"fa fa-calendar fa-lg\"></i>&nbsp; ". strftime("%d %b %Y %H:%M:%S", localtime @{$result}[0]->{changed}) ."</small></h5>\n";
    $main .= "<hr class=\"divider\">\n";

    if ( defined($url->{action}) ) {
        if ( $url->{action} eq 'edit') {
            $main .= "<form role=\"form\" action=\"/$url->{url}/$url->{id}\" method=\"POST\">\n";
            $main .= "<div class=\"form-group\">\n";
            $main .= "  <label for=\"title\">title:</label>\n";
            $main .= "  <input type=\"text\" class=\"form-control\" name=\"[title][". @{$result}[0]->{nid} ."]\" id=\"title\" value=\"". @{$result}[0]->{title} ."\">\n";
            $main .= "</div>\n";
        }
    }

    foreach (@$result) {
        unless ( defined($url->{action}) ) {
            $main .= decode_entities( $_->{value} )."\n";
        } elsif ( $url->{action} eq 'edit') {
            $main .= '<div class="form-group">
                          <label for="'.$_->{field_name}.'">'.$_->{field_name}.':</label>
<!--                          <textarea class="form-control" rows="5" name="['.$_->{field_name}.']['.$_->{nid}.']['.$_->{level}.']['.$_->{fcid}.']" id="'.$_->{field_name}.'">'.$_->{value}.'</textarea>-->
                          <textarea class="form-control" rows="'. $self->line_count($_->{value}) .'" name="['.$_->{field_name}.']['.$_->{nid}.']['.$_->{level}.']['.$_->{fcid}.']" id="'.$_->{field_name}.'">'.$_->{value}.'</textarea>
                        </div>';
        }
    }

    unless ( defined($url->{action}) ) {
        $main .= "<p><a href=\"/news\" type=\"button\" class=\"btn btn-success pull-right\">Back to News</a></p>\n";
    } elsif ( $url->{action} eq 'edit') {
        $main .= '<button type="submit" class="btn btn-primary">Save</button>';
        $main .= '</form>';
    }
    $main .= "<br /><br />\n";
    $main .= "</div>\n";
    $main .= "<div class=\"col-md-2\"></div>\n";
    $main .= "</div>\n";

#    print STDERR @{$result}[0]->{title};
#    print STDERR Dumper($result);
    return ( $main );
}

sub get_header {
    my ($self, $url, $path_tpl) = @_;

#    my ($title, $keywords, $description) = $self->get_metatag($url);

    my $tpl = $self->read_template($path_tpl, "header");
=comm
    $tpl =~ s/\|title\|/$title/;
    $tpl =~ s/\|keywords\|/$keywords/;
    $tpl =~ s/\|description\|/$description/;
    $tpl =~ s/\|author\|/mara/;
=cut
    return $tpl;
}


sub return_404 {
    my ($self, $url, $path_tpl) = @_;

    my $tpl = $self->get_header($url, $path_tpl);
    $tpl .= $self->read_template($path_tpl, "404");
    $tpl .= "    </body>\n</html>\n";
    return [404, [ 'Content-Type'   => 'text/html; charset=utf8' ], [ $tpl ]];
}


sub set_board {
    my($self, $url) = @_;

#    print STDERR Dumper($url);
    return '' unless defined($url->{id});
#     print STDERR Dumper( $self->return_404($url, $path_tpl) );

    my $query = "select * from node n ";
    $query .= "JOIN pages p ";
    $query .= "on p.id = n.id_page ";
    $query .= "LEFT JOIN field_data fd ";
    $query .= "on n.nid=fd.nid ";
    $query .= "LEFT JOIN field_config ";
    $query .= "fc on fc.id=fd.fcid ";
    $query .= "where fc.active = 1 ";
    $query .= "and n.nid = $url->{id} ";
    $query .= "and p.url = '$url->{url}' ";# unless defined($url->{id});
    $query .= "order by fd.level asc";
    my $result = $self->{sql}->select_sql($query);
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


sub save_sql {
    my($self, $data) = @_;

    foreach my $key ( keys %{$data} ) {
#        print STDERR $data->{$key}->{value}."\n";
        my $query;
        if ( $data->{$key}->{field} ne 'title' ) {
        $query .= "update field_data ";
        $query .= "SET value = '". encode_entities( $data->{$key}->{value} ) ."' ";
        $query .= "where nid = ". $data->{$key}->{nid} ." ";
        $query .= "and level = ". $data->{$key}->{level} ." ";
        $query .= "and fcid = ". $data->{$key}->{fcid} ." ";
        } elsif ( $data->{$key}->{field} eq 'title' ) {
            $query .= "update node ";
            $query .= "SET title = '". encode_entities( $data->{$key}->{value} ) ."' ";
            $query .= "where nid = ". $data->{$key}->{nid} ." ";
        }
        my $result = $self->{sql}->update_sql( $query );
#        print STDERR ( $query );
#        print STDERR encode_entities( $query );
    }
}


sub line_count {
    my($self, $string) = @_;
    my $count = $string =~ tr/\n// + !/\n\z/;
    return $count > 50 ? 50 : $count;
}


sub get_menu_dropdown {
    my($self, $data) = @_;

#print STDERR Dumper($data);

    my $menu ='
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">tools <span class="caret"></span></a>
              <ul class="dropdown-menu">
<!--                <li class="dropdown-header">hardware</li>
                <li role="separator" class="divider"></li>-->';
    foreach (@$data) {
        $menu .= "<li><a href=\"|root_url|$_->{link_path}\">$_->{menu_name}</a></li>\n" if $_->{menu_type} eq 'dropdown';
    }

    $menu .='
              </ul>
            </li>';

    return $menu;
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
				$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{rn} | level = $_->{level}"."\n";
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
			$menu .= "<li class=\"isFolder\" title=\"Bookmarks\"> $_->{rn} | level = $_->{level}"."\n";
			$menu .= '<ul>'."\n";
			$menu .= $self->get_node($data, $_->{id});
			$menu .= '</ul>'."\n";
			$menu .= $self->get_folder($data, $_->{id}) || '';
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
			$menu .=  "<li><a href=\"".decode_entities( $_->{link} )."\" target=\"rightside\">Go to $_->{rn} | level = $_->{level}</a></li>"."\n";
		}
	}	
	return $menu;
}

1;


