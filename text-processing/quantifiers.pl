#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

my $file = 'mymanjeeves.txt';

open(INPUT, $file) or die("Input file $file not found.\n");

while(my $line = <INPUT>) {

    if($line =~ /(s.*?n)/) {   
        print "$1\n";           # whatever is matched inside brackets goes into variable $1
    }
}

close(INPUT);

### Quantifiers ###
# '+' means 1 or more quantifier
# '*' means zero or more of preceding character
# (s.*n) means start with 's',  zero or more or as much as possible of whatever is in the middle, must finish with 'n'
# '.*' by itself is greedy - will match as many as possible
# '.*?' stops it being greedy - will match as little as possible