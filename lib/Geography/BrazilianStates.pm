package Geography::BrazilianStates;
use 5.008001;
use strict;
use warnings;

our $VERSION = "0.01";

our $STATES = [
  {name => 'Acre', abbreviation => 'AC', capital => 'Rio Branco', region => 'Norte'},
  {name => 'Alagoas', abbreviation => 'AL', capital => 'Maceió', region => 'Nordeste'},
  {name => 'Amapá', abbreviation => 'AP', capital => 'Macapá', region => 'Norte'},
  {name => 'Amazonas', abbreviation => 'AM', capital => 'Manaus', region => 'Norte'},
  {name => 'Bahia', abbreviation => 'BA', capital => 'Salvador', region => 'Nordeste'},
  {name => 'Ceará', abbreviation => 'CE', capital => 'Fortaleza', region => 'Nordeste'},
  {name => 'Distrito Federal', abbreviation => 'DF', capital => 'Brasília', region => 'Centro-Oeste'},
  {name => 'Espírito Santo', abbreviation => 'ES', capital => 'Vitória', region => 'Sudeste'},
  {name => 'Goiás', abbreviation => 'GO', capital => 'Goiânia', region => 'Centro-Oeste'},
  {name => 'Maranhão', abbreviation => 'MA', capital => 'São Luís', region => 'Nordeste'},
  {name => 'Mato Grosso', abbreviation => 'MT', capital => 'Cuiabá', region => 'Centro-Oeste'},
  {name => 'Mato Grosso do Sul', abbreviation => 'MS', capital => 'Campo Grande', region => 'Centro-Oeste'},
  {name => 'Minas Gerais', abbreviation => 'MG', capital => 'Belo Horizonte', region => 'Sudeste'},
  {name => 'Pará', abbreviation => 'PA', capital => 'Belém', region => 'Norte'},
  {name => 'Paraíba', abbreviation => 'PB', capital => 'João Pessoa', region => 'Nordeste'},
  {name => 'Paraná', abbreviation => 'PR', capital => 'Curitiba', region => 'Sul'},
  {name => 'Pernambuco', abbreviation => 'PE', capital => 'Recife', region => 'Nordeste'},
  {name => 'Piauí', abbreviation => 'PI', capital => 'Teresina', region => 'Nordeste'},
  {name => 'Rio de Janeiro', abbreviation => 'RJ', capital => 'Rio de Janeiro', region => 'Sudeste'},
  {name => 'Rio Grande do Norte', abbreviation => 'RN', capital => 'Natal', region => 'Nordeste'},
  {name => 'Rio Grande do Sul', abbreviation => 'RS', capital => 'Porto Alegre', region => 'Sul'},
  {name => 'Rondônia', abbreviation => 'RO', capital => 'Porto Velho', region => 'Norte'},
  {name => 'Roraima', abbreviation => 'RR', capital => 'Boa Vista', region => 'Norte'},
  {name => 'Santa Catarina', abbreviation => 'SC', capital => 'Florianópolis', region => 'Sul'},
  {name => 'São Paulo', abbreviation => 'SP', capital => 'São Paulo', region => 'Sudeste'},
  {name => 'Sergipe', abbreviation => 'SE', capital => 'Aracaju', region => 'Nordeste'},
  {name => 'Tocantins', abbreviation => 'TO', capital => 'Palmas', region => 'Norte'}
];

sub states {
  my $self = shift;
  return map { $_->{name} } @$STATES; 
}

sub abbreviations {
  my $self = shift;
  return map { $_->{abbreviation} } @$STATES; 
}

sub capitals {
  my $self = shift;
  return map { $_->{capital} } @$STATES; 
}

sub regions {
  my $self = shift;
  my %uniq;
  return grep { !$uniq{$_}++ } map { $_->{region} } @$STATES; 
}

sub abbreviation {
  my ($self, $name) = @_;
  for my $state(@$STATES) {
    if ($name eq $state->{name}) {
        return $state->{abbreviation};
    }
    if ($name eq $state->{abbreviation}) {
        return $state->{name};
    }
  }
}

sub capital {
  my ($self, $name) = @_;
  for my $state(@$STATES) {
    if ($name eq $state->{name}) {
        return $state->{capital};
    }
    if ($name eq $state->{capital}) {
        return $state->{name};
    }
  }
}

sub region {
  my ($self, $name) = @_;
  my $regions = [];
  for my $state(@$STATES) {
    if ($name eq $state->{name}) {
        return $state->{region};
    }
    if ($name eq $state->{region}) {
        push @$regions, $state->{name};
    }
  }
  return @$regions;
}

sub states_all {
  my $self = shift;
  return $STATES;
}

1;
__END__

=encoding utf-8

=head1 NAME

Geography::BrazilianStates - It's new $module

=head1 SYNOPSIS

    use Geography::BrazilianStates;

=head1 DESCRIPTION

Geography::BrazilianStates is ...

=head1 LICENSE

Copyright (C) yuzoiwasaki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=head1 AUTHOR

yuzoiwasaki E<lt>a0556017@sophia.jpE<gt>

=cut

