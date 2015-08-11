#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;

# An anonymous subroutine is a subroutine without a name, it behaves like a 
# named subroutine but the only way to deal with it is by reference.

my $login = sub { 
    my $username = shift;
    
    if ($username eq "behemoth") {
        say "Access granted as '$username'";
    } else {
        say "Access denied as '$username'";
    }
}; # We need a semicolon to (en)close the statement.

$login->('BEHEMOTH');

my $user = 'behemoth';
&$login($user);
&{$login}('luca');

# &{$access}();
# &{$access};
# &$access;

