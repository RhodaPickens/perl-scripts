#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

sub main {

    my @files = (
        '/Users/rhoda/Pictures/Dad and mum.JPG',
        '/Users/rhoda/Pictures/missing.txt',
    );

    foreach my $file (@files) {
        if ( -f $file ) {
            print "Found file: $file\n";
        }
        else {
            print "File not found: $file\n";
        }
    }

}

main();
