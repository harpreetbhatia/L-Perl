#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @array = qw(white blue red green black);

my $first_ref = \@array;
my $second_ref = $first_ref;
my $third_ref = $second_ref;

# They are identical
say $first_ref->[0];
say $second_ref->[1];
say $third_ref->[2];

$first_ref->[0] = "blu";
say $third_ref->[0];
