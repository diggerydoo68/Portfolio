#!/usr/bin/perl

####################################################################
# -- Writing to a file
####################################################################
use strict;
use warning;

use Path::Class; #-- Path::Classexternal link makes working with directories (Path::Class::Direxternal link) and files (Path::Class::Fileexternal link) clean and easy to do.
use autodie; # program dies if there is a problem reading the file
my $dir = dir("C:\Users\A591043\Documents\Personal\Code\Perl"); #/tmp

my $file = $dir->file("file.txt"); # /tmp/file.txt

#Get a file_handle (IO::File Object) you can write top
my $file_handle = $file->openw();

my @list = ('a', 'list', 'of', 'lines');

foreach my $line ( @line ){
	#Add the line to the file 
	$file_handle->print($line . "\n");
}

# #####################################################################
# #-- Appending to a file
# #####################################################################
# # As above but use Open('>>') instead of openw()
# my $file_handle = $file->open('>>');

# #####################################################################
# #-- Reading a file
# #####################################################################
# use strict;
# use warnings;

# use Path::Class;
# use autodie;

# my $dir = dir("/tmp");

# my $file = $dir->file("file.txt");

# #Read entire contents of a file
# my $content = $file->slurp();

# #openw() returns an IO::File object to read from
# my $file_handle = $file->openr();

# # read in line at a time
# while( my $line = $file_handle->getLine() ) {
	# print $line;
# }
