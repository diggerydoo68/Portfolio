#!/usr/bin/perl

#Display all files in /tmp directory
$dir = "/tmp/*";
my @files = glob( $dir );

foreach (@files ){
	print $_. "\n";
}

# Display all the C source files in /tmp directory.
$dir = "/tmp/.c*";
@files = glob( $dir );

foreach (@files){
	print $_. "\n";
}

#Display all the hidden files.
$dire = "/tmp/.*";
@files = glob( $dir );
foreach (@files ){
	print $_. "\n";
}

# Display all the files from /tmp and /home directories
$dir = "/tmp/* /home/*";
@files = glob( $dir );

foreach (@files ){
	print $_. "\n";
}


# Another example for listing out all files in a directory is like socket

opendir (DIR, '.') or die "Couldn't open dierctory, $!";
while ($file = readdir DIR){
	print "$file\n";
}
closedir DIR;


# Another way to print out file extension nameed files is like so
opendir(DIR, '.') or die "Couldn't open directory, $!";
foreach (sort grep(/^.*\.c$/,readdir(DIR))){
	print "$_\n";
}
closedir DIR;