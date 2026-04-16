use strict;
use warnings;

$|=1;

sub readfiles {
    my $file = '/Users/rhoda/Code/perl-projects/mymanjeeves.txt';

    open(INPUT, $file) or die("Input file $file not found.\n");

    while(my $line = <INPUT>) {
        if($line =~ / egg /) {      # wildcard '.' - any one space character
            print $line;
        }
    }

    close(INPUT);
}

readfiles();