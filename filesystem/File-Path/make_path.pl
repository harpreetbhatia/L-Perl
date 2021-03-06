#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use File::Path qw(make_path);

# File::Path
# This module provide a convenient way to create directories of arbitrary depth
# and to delete an entire directory subtree from the filesystem.

# make_path() 
# The make_path function creates the given directories if they don't exists
# before, much like the Unix command mkdir -p.

die "Usage: $0 <dirname 1><dirname 2>\n" if (@ARGV != 2);

chomp(my $top_dir = $ARGV[0]);
chomp(my $sub_dir = $ARGV[1]);

# How to create two directories
# warn "Warning:" if !make_path($top_dir, $sub_dir, {
make_path($top_dir, $sub_dir, {
    verbose => 1,
    mode => 0755,
    # owner => 
    # user => 
    # group =>
    # uid =>
});
