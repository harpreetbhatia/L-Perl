#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# Another way to read input is with the diamond operator <>.
# Larry Wall put this feature into Perl because he wanted to make it easy for 
# you to write your own programs that work like standard Unix utilities.
# The diamond operator <> will return undef only at the end of all of the 
# input.

# while (defined(my $line = <>)) {
#    chomp($line);
#    say "$line";
# }

# Same thing:
while (<>) {
    chomp;
    say $_;
}
