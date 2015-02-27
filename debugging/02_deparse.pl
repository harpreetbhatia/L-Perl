#!/usr/bin/env perl
use warnings;
use strict;
use v5.14;
use B::Deparse;

#Il modulo B::Deparse esegue la verifica del codice, in particolare il
#controllo della precedenza e dell'associativita' degli operatori, ma non solo,
#e' in generale un'ottima risorsa per il debugging.
#
#Uso:
# perl -MO=Deparse, -p 02_deparse.pl
my $num = 12 + 9 / 2 + 4 * 7 - 2*+2*+3**2+4/34**2-100;
