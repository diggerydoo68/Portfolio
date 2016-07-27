#!/usr/bin/perl

use strict;
use warnings;
 
my $filename = 'report.txt';
open(my $fh, '<:encoding(UTF-8)', $filename)
  or die "Could not open file '$filename' $!";
 
while (my $row = <$fh>) {
  chomp $row;
  print "$row\n";
}
#####################################################
#-- This snippet works with a premade text file that
#-- includes characters to parse
#####################################################
