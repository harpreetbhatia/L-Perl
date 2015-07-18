#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my $object = Crypt::PBKDF2->new;
my $clean_password = "weak_pass_for_testing";

my $encrypted_pass = $object->generate($clean_password);

say $encrypted_pass;
