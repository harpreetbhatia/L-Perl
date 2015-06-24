#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use List::Util qw(max);

# The smart match operator ~~ looks at both of its operands and decides on its
# own how it should compare them. If the operands look like numbers, it does a
# numeric comparison. If they look like strings, it does a string comparison.
# If one of the operands is a regular expression, it does a pattern match.
# It can also do some complex tasks that would otherwise take a lot of code,
# so it keeps you from doing too much typing.
# Returns a true value if operands match.

my $text = "Perl is one the best languages to manage UNIX systems";
my $perl_version = 5.20;

say "A: strings" if ($text ~~ /perl/i);
say "B: numbers" if ($perl_version ~~ 5.20);

my @italian_names = qw(mario luca gabriele michele maria lucia giovanni);
my @english_names = qw(mario luca gabriele michele maria lucia giovanni);

# The arrays have the same elements
say "C: array" if (@italian_names ~~ @english_names);

my %football_team_a = (
    torino => 'juventus',
    milano => ' milan',
    torino => 'torino',
    milano => 'inter',
    roma => 'roma',
    genova => 'sampdoria',
    roma => 'lazio',
    genova => 'genoa',
);

my %football_team_b = (
    torino => 'juventus',
    milano => ' milan',
    torino => 'torino',
    milano => 'inter',
    roma => 'roma',
    genova => 'sampdoria',
    roma => 'lazio',
    genova => 'genoa',
);

# Compare two hash and hash key
say "D: hash" if (%football_team_a ~~ %football_team_b);
say "D: hash key" if (%football_team_a ~~ /torino/);

my @numbers = qw(1 2 3 5 8 13 21 34 55 89);
my $result = max(@numbers);

say "(@numbers) = $result" unless @numbers ~~ $result;
