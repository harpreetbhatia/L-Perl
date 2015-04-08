#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

my $filename = 'eve.jpg';
my $file_copy;
($file_copy = $filename) =~ s/^\w{3}/copy/;

open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# make a copy
$image->Write($file_copy);

undef $image;
close(IMAGE);
