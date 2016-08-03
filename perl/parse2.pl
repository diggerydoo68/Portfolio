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


##############################################
#-- put items into an array
##############################################
open my $handle, '<', $path_to_file;
chomp(my @lines = <$handle>);
close $handle;


##############################################
#-- put items into an array
##############################################
perl -ne 'if ($p) { print; $p = 0 } $p++ if /science/'

perl -ne '$p && print; $p = /science/'