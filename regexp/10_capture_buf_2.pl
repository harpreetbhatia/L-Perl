#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

#looping through multiple matches

#capture each e-mail address
my $email_list = 'bob@dylan.itjohn@from.ukluc@unix.frlarry@perl.us';

while ($email_list =~ m/([\w\.]+@[\w\.]+\.(it|fr|us|uk))/gi) {
    say "(A) e-mail: $1";
}

#assign the result of the matching operator to an array, each array element
#will contain an email address:
my @array = ($email_list =~ m/([\w\.]+@[\w\.]+\.[a-z]{2})/gi);

for (my $i=0; $i<@array; $i++) {
    say '(B) e-mail: '.$array[$i];
}

#the same thing with different way (but it's not so pretty)
my $x = 0;
my @arr;

while ($email_list =~ m/([\w\.]+@[\w\.]+\.(it|fr|us|uk))/gi) {
    $arr[$x] = $1;
    say '(C) e-mail: '.$arr[$x];
    $x++;
}
