#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# state VARIABLE;
# It's like declaring variables with my(), but it's initialized only once and 
# retain their value.

sub counter {
    state $counter = 1;
    $counter++;
}

for (1..5) { 
    say counter(); 
}
