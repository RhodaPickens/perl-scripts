#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

my $text = 'My zip code is TX 78154';

# Extract zip code
if($text =~ /(TX\s\d{3,})/) {        
    print "Matched: '$1'\n";
}

# {5} five of the preceding
# {3,6} at least three and at most 6 of the preceding
# {3,} at least three of the preceding