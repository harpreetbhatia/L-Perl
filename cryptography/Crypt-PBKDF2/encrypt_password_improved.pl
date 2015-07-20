#!/usr/bin/env perl
use warnings;
use strict;
use v5.22.0;
use Crypt::PBKDF2;

my $object = Crypt::PBKDF2->new(
    hash_class  => 'HMACSHA2',  # default is HMACSHA1
    iterations  =>  '1500',     # default is 100# default is 1000
my $clean_password = "abcdefghi";

my $encrypted_pass = $object->generate($clean_password);

say $encrypted_pass;
