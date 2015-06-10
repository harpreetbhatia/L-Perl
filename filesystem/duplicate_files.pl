#!/usr/bin/env perl
use strict;
use warnings;
use File::Find;
use Digest::MD5;

# (Wicked Cool Perl Script)
# find_duplicate_files(@dir_list)
# Return an array containing a list of duplicate files.

sub find_duplicate_files(@) {
    # The list of directories to search
    my @dir_list = @_;

    # If nothing there, return nothing
    if ($#dir_list < 0) {
        return (undef);
    }

    # Hash %files:
    # - key is the file size;
    # - vakue is an array containing the filenames.
    my %files;

    # Go through the file tree and find all files with a similar size
    find( sub {
            -f && push @{$files{(stat(_))[7]}}, $File::Find::name
        }, @dir_list 
    );

	# Resulting list
    my @result = ();

    # Loop through list of files by size and check md5 for every files
    foreach my $size (keys %files) {
        # skip any entries where there's only one file in the name list
        if ($#{$files{$size}} < 1) {
            next;
        }
        
        my %md5;	# MD5 -> file name array hash

	    # Loop through each file of this size and 
	    # compute the MD5 sum
	    foreach my $cur_file (@{$files{$size}}) {
            # Open the file.  Skip the files we can't open
            open(FILE, $cur_file) or next;
	        binmode(FILE);
	        push @{$md5{
                    Digest::MD5->new->addfile(*FILE)->hexdigest}
                }, $cur_file;
           close (FILE);
       }
	   # Now check for any duplicates in the MD5 hash
	    foreach my $hash (keys %md5) {
	        if ($#{$md5{$hash}} >= 1) {
		        push(@result, [@{$md5{$hash}}]);
            }
        }
    }
    
    return @result
}

my @dups = find_duplicate_files(@ARGV);

foreach my $cur_dup (@dups) {
    print "Duplicates\n";
    
    foreach my $cur_file (@$cur_dup) {
	    print "\t$cur_file\n";
    }
}
