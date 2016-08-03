#!/usr/bin/perl

$dir = "/tmp/perl";

# This creates perl directory in /tmp directory.
mkdir( $dir ) or die "Couldn't create $dir directory, $!";
print "Directory created successfully\n";


# this next block removes a directory

rmdir( $dir ) or die "Couldn't remove $dir directory, $!";
print "Directory Removed successfully\n";

# The following block changes a directory
$dir = "/home";

# This changes perl dictionary and moves you inside /home directory.
chdir( $dir ) or die "Couldn't go inside $dir directory, $!";
print "Your new location is $dir\n";