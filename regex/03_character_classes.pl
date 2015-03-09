#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $lang = "perl";
my $superhero = "super-man";
my $year = "1925";

#character classes is a set of allowed characters
if ($lang =~ m/[Pp]erl/) { say "I use $lang every day"; }
if ($superhero =~ m/super[ -]man/) { say "but I'm not $superhero :)"; }
if ($year =~ m/192[058]/) { say "$year"; }

