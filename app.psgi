#!/usr/bin/perl -w

  use strict;
  use warnings;
  no warnings 'experimental::smartmatch';
#  use utf8;
#  binmode(STDOUT,':utf8');
#  use open(':encoding(utf8)');
  use lib 'lib';

  use Plack;
  use Plack::Request;
  use Plack::Response;
  use Plack::Builder;
  use Data::Dumper;

  use config;
  use auto_index;
  use krr_app_pacnt08;

  $| = 1;  # make unbuffered

  my $conf = CONF->new("config/app_psgi.conf.yml");

  # all apps
  my %apps = (  'files_share' => sub {
                    my $conf = shift;

                    return sub {
                        my $env = shift;

                        my $app = auto_index->new( root => $conf->{path}, denied => $conf->{permission}->{denied} )->to_app;

                        my $request = Plack::Request->new($env);

                        if ( ! grep { $request->path_info ~~ /(\/\.)|(\/$_)/g } @{$conf->{permission}->{denied}} ) {
                                $app->($env);
                            } else {
                                return [
                                    '404',
                                    [ 'Content-Type' => 'text/html' ],
                                    [ '404 Not Found' ],
                                ];
                            };
                    };
                },

                'krr_app_pacnt08' => sub {
                    my $conf = shift;

                    return sub {
                        my $env = shift;
                        my $app = krr_app_pacnt08->new(conf => $conf);
                        $app->($env);
                    };
                },
  );

  # builder
  my $builder = Plack::Builder->new;
  $builder->add_middleware('Static', path => qr{^/(styles|tpl|img|js|css|robots.txt)/} , root => "./public/");

  foreach my $host ( keys %{$conf->{hosts}} ) {
    if ( defined $conf->{hosts}->{$host}->{enable} ) {
        if ( $conf->{hosts}->{$host}->{enable} eq 'true' ) {
            $builder->mount( $host => builder { $apps{ $conf->{hosts}->{$host}->{app} }->( $conf->{hosts}->{$host} ) } );
        }
    }
  }

  $builder->to_app;

