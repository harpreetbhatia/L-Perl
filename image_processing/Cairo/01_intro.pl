#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use Cairo;

my $surface = Cairo::ImageSurface->create ('argb32', 100, 100);
my $cr = Cairo::Context->create ($surface);

$cr->rectangle (10, 10, 40, 40);
$cr->set_source_rgb (0, 0, 0);
$cr->fill;

$cr->rectangle (50, 50, 40, 40);
$cr->set_source_rgb (1, 1, 1);
$cr->fill;

$cr->show_page;

$surface->write_to_png ('output.png');