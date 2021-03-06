#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;

# All Perl subroutines have a return value, there's no distinction between
# those that return values and those that don't. Not all Perl subroutines have
# a useful return value.

# The last evaluated expression in the body of the subroutine is the return 
# value.

my $length = 10;
my $weigth = 5;

my $total = &sum;
 
say "\$total is $total";

sub sum {
    print "you called sum subroutines\n";
    $length + $weigth;
}

# the sum of $length and $weigth is the return value

my $molt = 10 * &sum;
say $molt;

# Note that the last evaluated expression means the last expression that Perl
# evaluates, rather than the last statement in the subroutine
sub last_expression_is {
    print "Hi";
    $length + $weigth;
    print "Ops";
}

my $new_tot = &sum; # Check the warnings
