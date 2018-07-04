#!/usr/bin/perl

use strict;
use warnings;

srand(0);

my $RECORD_COUNT = 100000000;
for(my $i = 1; $i <= $RECORD_COUNT; $i++) {
    my @field;
    push(@field, $i);
    push(@field, sprintf("%08d\@example.com", $i));
    push(@field, int(rand(5))+1);
    push(@field, int(rand(10))+1);
    push(@field, int(rand(100000))+1);
    push(@field, int(rand(1000000))+1);
    push(@field, int(rand(10000000))+1);
    print join(",", @field), "\n";
}
