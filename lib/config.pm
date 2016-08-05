#!/usr/bin/perl -w


package CONF;{
  use YAML::Tiny;
  use lib  '.';
  use logging;
  use Data::Dumper;

  sub new {
    # получаем имя класса
    my($class, $conf_file) = @_;
    # создаем хэш, содержащий свойства объекта
    my $self = {
        'log' => LOG->new(),
        'conf_file' => $conf_file,
    };

    # хэш превращается, превращается хэш...
    bless $self, $class;
    # ... в элегантный объект!

    # эта строчка - просто для ясности кода
    # bless и так возвращает свой первый аргумент

    $self->set_conf;

    return $self;
  }

  sub set_conf {
    my($self) = @_; # ссылка на объект

    my $configuration = YAML::Tiny->read( "$self->{conf_file}" );

    # Get a reference to the first document
    eval {
        # hosts
        $self->{hosts} = $configuration->[0]->{hosts} || die $!;
    };

    $self->{log}->save('e', "$@") if $@;
  }

  sub get_conf {
    my($self, $name) = @_;
    if ($name =~ /hosts/){
        return $self->{hosts};
    }
  }
}

1;
