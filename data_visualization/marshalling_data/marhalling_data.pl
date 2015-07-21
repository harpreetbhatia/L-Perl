#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Data::Dumper;

# Marhalling in computer science is the process of transforming the memory of
# an object to a data format suitable for storage or transmission, and it is
# typically used when data must be moved between different parts of a computer
# program or from one program to another. It is similar to serialization.

my @ita_football_club = qw(juventus torino inter genoa);
my @eng_football_club = qw(chelsea arsenal liverpool);

push @eng_football_club, \@ita_football_club;
push @ita_football_club, \@eng_football_club;

my $string = Data::Dumper->Dump(
    [\@ita_football_club, \@eng_football_club],
    [ qw(*ita_football_club *eng_football_club) ]
);


my $data = $string;

print $data;