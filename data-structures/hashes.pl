#!/usr/bin/env perl
use strict;
use warnings;

use Data::Dumper;

$|=1;

# hash = unordered keys and values
my %months = (
    "Jan" => 1,
    "Feb" => 2,
    "Dec" => 12,
    "Jun" => 6,
);

print $months{"Jan"} . "\n";

my %days = (
    1 => "Monday",
    2 => "Tuesday",
    3 => "Wednesday",
);

print $days{1} . "\n";

# Iterate over hash
my @months = keys %months;

foreach my $month(@months) {
    my $value = $months{$month};

    print "$month: $value\n";
}

# 'each' returns arrays of key value pairs
while( my ($key,$value) = each %days ) {
    print "$key: $value\n";
}