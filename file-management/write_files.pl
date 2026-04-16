#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

sub main {

    my $input = '/Users/rhoda/Code/perl-projects/mymanjeeves.txt';
    open(INPUT, $input) or die("Input file $input not found.\n");

    my $output = 'output.txt';
    open(OUTPUT, '>'.$output) or die "Can't create $output.\n";

    while(my $line = <INPUT>) {


        if($line =~ /\begg\b/) {    # \b - word boundary either side
            $line =~ s/you/YOU/ig;             # searches for 'you' and replaces it
            $line =~ s/\bit\b/Henry/ig;
            $line =~ s/\bhen\b/dinosaur/ig;
            print OUTPUT $line;
        }
    }

    close(INPUT);
    close(OUTPUT);

}

main();