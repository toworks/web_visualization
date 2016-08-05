#!/usr/bin/perl -w


package mssql;{
  use DBI;
  use lib ".";
  use logging;
  use Data::Dumper;

 sub new {
    # получаем имя класса
    my($class, $conf, $log) = @_;
    # создаем хэш, содержащий свойства объекта

    my $self = {
        'error' => 1,
        'log' => LOG->new(),
        'sql' => $conf,
    };
  
    # хэш превращается, превращается хэш...
    bless $self, $class;
    # ... в элегантный объект!

    $self->set_con();

    # эта строчка - просто для ясности кода
    # bless и так возвращает свой первый аргумент
    return $self;
  }
 
  sub set_con {
    my($self) = @_; # ссылка на объект
#	$self->{dsn} = "Driver={ODBC Driver 11 for SQL Server};Server=$self->{sql}->{host};Database=$self->{sql}->{database};Trusted_Connection=yes";
	$self->{dsn} = "Driver={SQL Server};Server=$self->{sql}->{host};Database=$self->{sql}->{database};Trusted_Connection=yes";
  }

  sub conn {
    my($self) = @_;
    eval{ $self->{dbh} = DBI->connect("dbi:ODBC:$self->{dsn}") || die "$DBI::errstr"; };
    if ($@) { $self->{log}->save('e', "$@"); $self->{error} = 1; } else { $self->{log}->save('i', "connected mssql"); $self->{error} = 0; }
  }

  sub get_host {
    my($self) = @_;
    return $self->{sql}->{host};
  }

  sub get_database {
    my($self) = @_;
    return $self->{sql}->{database};
  }

  sub get_port {
    my($self) = @_;
    return $self->{sql}->{port};
  }

  sub get_username {
    my($self) = @_;
    return $self->{sql}->{username};
  }

  sub get_password {
    my($self) = @_;
    return $self->{sql}->{password};
  }

  sub get_dsn {
    my($self) = @_;
    return $self->{sql}->{dsn};
  }

  sub get_error {
    my($self) = @_;
    return $self->{error};
  }

  sub get {
    my($self, $array) = @_;

    my($sth, $ref, $query, $values);

    $self->conn() if ( $self->{error} eq 1 );

    $query = 'SELECT * FROM files where hash = ? order by timestamp desc';

    $self->{dbh}->{AutoCommit} = 0;
    eval{ $sth = $self->{dbh}->prepare_cached($query) || die "$DBI::errstr";
          $sth->execute( $array ) || die "$DBI::errstr";# for @array;
          $values = $sth->fetchrow_hashref;
          $sth->finish || die "$DBI::errstr";
    };# обработка ошибки
    if ( $@ ) {
        $self->{log}->save('e', "$@");
        $self->{error} = 1;
    }
    $self->{dbh}->{AutoCommit} = 1;
    splice(@array);

    return $values;
  }

  sub get_last {
    my($self, $search) = @_;

    my($sth, $ref, $query, $values);

    $self->conn() if ( $self->{error} == 1 );

    if ( length($search) < 3 ) {
        $search = 100;
        $query = 'SELECT * FROM files order by timestamp desc LIMIT ?';
    } else {
        $query = 'SELECT * FROM files where name like ? order by timestamp desc';
        $search  = '%' . $search . '%';
    }

    $self->{dbh}->{AutoCommit} = 0;
    eval{ $sth = $self->{dbh}->prepare_cached($query) || die "$DBI::errstr";
          $sth->execute( $search ) || die "$DBI::errstr";
          while( my $hash_ref = $sth->fetchrow_hashref ) {
              $values->{$hash_ref->{timestamp}} = $hash_ref;
          }
          $sth->finish || die "$DBI::errstr";
    };# обработка ошибки
    if ( $@ ) {
        $self->{log}->save('e', "$@");
        $self->{error} = 1;
    }
    $self->{dbh}->{AutoCommit} = 1;
    splice(@array);

    return $values;
  }

  sub del {
    my($self, $hash) = @_;

    my($sth, $ref, $query);
    $self->conn() if ( $self->{error} eq 1 );

    $query = 'delete FROM files where hash = ?';

    $self->{dbh}->{AutoCommit} = 0;
    eval{ $sth = $self->{dbh}->prepare_cached($query) || die "$DBI::errstr";
          $sth->execute( $hash ) || die "$DBI::errstr";
          $sth->finish || die "$DBI::errstr";
    };# обработка ошибки
    if ( $@ ) {
        $self->{log}->save('e', "$@");
        $self->{error} = 1;
    }
    $self->{dbh}->{AutoCommit} = 1;
  }

  sub select_sql {
    my($self, $query) = @_;

    my($sth, $ref, @rows);

    $self->conn() if ( $self->{error} == 1 );

    $self->{dbh}->{AutoCommit} = 0;
    eval{ $sth = $self->{dbh}->prepare_cached($query) || die "$DBI::errstr";
          $sth->execute() || die "$DBI::errstr";
          while( my $hash_ref = $sth->fetchrow_hashref ) {
              push @rows, $hash_ref;
          }
          $sth->finish || die "$DBI::errstr";
    };# обработка ошибки
    if ( $@ ) {
        $self->{log}->save('e', "$@");
        $self->{error} = 1;
    }
    $self->{dbh}->{AutoCommit} = 1;

    return \@rows;
  }

  sub update_sql {
    my($self, $query) = @_;

    my($sth, $ref);

    $self->conn() if ( $self->{error} == 1 );

    $self->{dbh}->{AutoCommit} = 0;
    eval{ $sth = $self->{dbh}->prepare_cached($query) || die "$DBI::errstr";
          $sth->execute() || die "$DBI::errstr";
          $sth->finish || die "$DBI::errstr";
    };# обработка ошибки
    if ( $@ ) {
        $self->{log}->save('e', "$@");
        $self->{error} = 1;
    }
    $self->{dbh}->{AutoCommit} = 1;
  }

}

1;
