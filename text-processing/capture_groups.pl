#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

sub readfiles {
    my $file = '/Users/rhoda/Code/perl-projects/mymanjeeves.txt';

    open(INPUT, $file) or die("Input file $file not found.\n");

    while(my $line = <INPUT>) {
        if($line =~ /(I..a.)(...)/) {      # round brackets around expression you want to capture
            print "First match: '$1'; second match: '$2'\n";
        }
    }

    close(INPUT);
}

readfiles();