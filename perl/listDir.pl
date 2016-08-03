#!/usr/bin/perl

use strict;
use warning;

use Path::Class;

my $dir = dir('foo', 'bar'); / #foo/bar

# Iterate over the content of foo/bar
while (my $file = $dir->next){
	
	# See if it is a directory and skip 
	next if $file->is_dir();
	
	#print out the file name and path 
	print $file->stringify . "\n";
}