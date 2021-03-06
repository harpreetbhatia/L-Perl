#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my @array = qw(white gray red green black);

my $first_ref = \@array;
my $second_ref = $first_ref;
my $third_ref = $second_ref;

# They are identical
say $first_ref->[0];
say $second_ref->[1];
say $third_ref->[2];

# Modify an array element
$first_ref->[0] = "blu";
say $third_ref->[0];
${$first_ref}[1] = "yellow";
say ${$second_ref}[1];

# Compare the numeric forms of the two references, in this case is the unique 
# memory address of the @array
if ($first_ref == $second_ref) {
    say "$first_ref address memory and $second_ref address memory are the same";
}

# Method 1 - Dereferencing an array with curly braces
foreach (@{$third_ref}) {
    say 'A: ', $_;
}

# Method 2 - Dereferencing an array getting curly braces off
foreach (@$second_ref) {
    say 'B: ', $_;
}

$$first_ref[1] = "orange";
say $$first_ref[1];
