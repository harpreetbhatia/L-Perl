#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

my $sequence = "AACTAGCGGATTCCAGACCGT";

# 's///' when we want to substitute a pattern with a string
# 's/match/replacement/'
say "Before: $sequence";
$sequence =~ s/GATTCCA/_PERL_LANGUAGE_/;
say " After: $sequence";

my $url_one = "http://iloveperl.com";
say "Before: $url_one";

# with escaping is ok but there are better alternatives
$url_one =~ s/http:\/\///;
say " After: $url_one";

# alternatives are:
# $url_one =~ s!http://!!;
# $url_one =~ s@http://@@;
# $url_one =~ s#http://##;

my $url_two = "http://www.perl.com";
say "Before: $url_two";
$url_two =~ s!http://!!;
say " After: $url_two";
