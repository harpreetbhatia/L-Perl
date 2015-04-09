#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Modern::Perl;

kernel_version(unix => 'bsd');

sub AUTOLOAD{
    our $AUTOLOAD;

    # print arguments
    local $" = ', ';
    say "AUTOLOAD(@_), subroutine \'$AUTOLOAD\' doesn\'t exist!";
}

