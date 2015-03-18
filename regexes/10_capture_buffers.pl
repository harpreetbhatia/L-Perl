#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#Capture variables are associated with parentheses inside regex, thery are also
#know as capture buffers; each pair of parentheses in a regex captures what its
#contents match and memorizes it in a capture variable.

my $cellphone = "123-456-7890";
say "$1 $2 $3" if ($cellphone =~ /([0-9]{3})-([0-9]{3})-([0-9]{4})/);

#these special variables will be only populated if the match succeeds

$_ = 'http://www.perlmonks.org/index.html';

if (m#^http://([^/]+)(.*)#) {
    say "host: $1";
    say "path: $2";
}
