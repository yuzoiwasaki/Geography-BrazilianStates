# NAME

Geography::BrazilianStates - output information of Brazilian States

# SYNOPSIS

    use Geography::BrazilianStates;

    Geography::BrazilianStates->states;
    # => output all states

    Geography::BrazilianStates->abbreviations;
    # => output all abbreviations

    Geography::BrazilianStates->capitals;
    # => output all capitals

    Geography::BrazilianStates->regions;
    # => output all regions

    Geography::BrazilianStates->abbreviation('Amazonas');
    # => 'AM'

    Geography::BrazilianStates->abbreviation('AM');
    # => 'Amazonas'

    Geography::BrazilianStates->capital('Amazonas');
    # => 'Manaus'

    Geography::BrazilianStates->capital('Manaus');
    # => 'Amazonas'

    Geography::BrazilianStates->region('Amazonas');
    # => 'Norte'

    Geography::BrazilianStates->region('Norte');
    # => qw(Acre Amapá Amazonas Pará Rondônia Roraima Tocantins)
    
    Geography::BrazilianStates->states_all;
    # => output all states with full information as ArrayRef

# DESCRIPTION

This module provides you Brazilian States information like name, abbreviation, capital, and region itself.

# Class Methods

## states

    Geography::BrazilianStates->states;
    # => output all states

## abbreviations

    Geography::BrazilianStates->abbreviations;
    # => output all abbreviations

## capitals

    Geography::BrazilianStates->capitals;
    # => output all capitals

## regions

    Geography::BrazilianStates->regions;
    # => output all regions

## abbreviation

    Geography::BrazilianStates->abbreviation('Amazonas');
    # => 'AM'

    Geography::BrazilianStates->abbreviation('AM');
    # => 'Amazonas'

## capital

    Geography::BrazilianStates->capital('Amazonas');
    # => 'Manaus'

    Geography::BrazilianStates->capital('Manaus');
    # => 'Amazonas'

## region

    Geography::BrazilianStates->region('Amazonas');
    # => 'Norte'

    Geography::BrazilianStates->region('Norte');
    # => qw(Acre Amapá Amazonas Pará Rondônia Roraima Tocantins)

## states\_all

    Geography::BrazilianStates->states_all;
    # => output all states with full information as ArrayRef

# LICENSE

Copyright (C) yuzoiwasaki.

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

# AUTHOR

yuzoiwasaki <a0556017@sophia.jp>
