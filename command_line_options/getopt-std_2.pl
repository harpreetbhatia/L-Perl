#!/usr/bin/env perl
use strict;
use warnings;
use Getopt::Std;
 
# Command line options by using 'getopts' Getopt::Std package.
 
# declare the perl command line flags/options we want to allow
my %options=();
getopts("hj:ln:s:", \%options);
 
# test for the existence of the options on the command line.
# in a normal program you'd do more than just print these.
print "-h $options{h}\n" if defined $options{h};
print "-j $options{j}\n" if defined $options{j};
print "-l $options{l}\n" if defined $options{l};
print "-n $options{n}\n" if defined $options{n};
print "-s $options{s}\n" if defined $options{s};
 
# other things found on the command line
print "Other things found on the command line:\n" if $ARGV[0];
foreach (@ARGV)
{
  print "$_\n";
}
