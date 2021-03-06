#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#The function wantarray() returns:
# - true if the context of the currently executing subroutine or "eval" is
#   looking for a list value;
#
# - false if the context is looking for a scalar;
#
# - the undefined value if the context is looking for no value (void context).

sub awareness_context {
    my $context = wantarray();

    return qw(List Context) if $context;
    say 'void context' unless defined $context;
    return 'scalar context' unless $context;
}

awareness_context();
say my $scalar = awareness_context();
say awareness_context();
