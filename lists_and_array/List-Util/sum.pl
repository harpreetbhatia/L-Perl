#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use List::Util qw(sum);

# sum() returns the numerical sum of all the elements of the list
my @greater_five = qw(1 2 3 4 5);
my @greater_six = qw(6 7 8 9 10);

my $total_five = sum @greater_five;
say "A: $total_five";

my $total = sum @greater_five, @greater_six;
say "B: $total";
