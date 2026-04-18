#!/usr/bin/env perl
use strict;
use warnings;

$|=1;

my $text = '"It is a truth universally acknowledged, that a single man in possession of a good fortune, must be in want of a wife" Pride and Prejudice (1813)';

if($text =~ /(a\s\S*)/) {
    print "Matched: '$1'\n";            # 'a truth'
}

if($text =~ /(\d+)/) {                  # '1813'
    print "Matched: '$1'\n";
}

if($text =~ /(p\w+)/) {                 # 'possession'
    print "Matched: '$1'\n";
}

# \d digit
# \s space
# \S non-space character
# \w alphanumeric includes underscore
