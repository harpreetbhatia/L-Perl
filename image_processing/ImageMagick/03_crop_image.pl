#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Image::Magick;

my $image  = Image::Magick->new;

my $filename = 'eve.jpg';
my $file_copy;
($file_copy = $filename) =~ s/^.+\./crop\./;

open(IMAGE, $filename);
$image->Read(file=>\*IMAGE);

# crop an image
$image->Crop(geometry=>'200x200');

# make cropped image
$image->Write($file_copy);

undef $image;
close(IMAGE);
