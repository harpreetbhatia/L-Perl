#!/usr/bin/env perl
use warnings;
use strict;
use diagnostics;
use v5.14;

use lib 'lib';
# Import functions by specifying their names in the import list:
use Unix::Export qw(max_user get_hostname get_id);

my $max_user = max_user();
my $hostname = get_hostname();
my $id = get_id();

say "$max_user, $hostname, $id";
