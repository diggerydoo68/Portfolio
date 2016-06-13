#!/usr/bin/perl
# lcov71
# Date: 06-03-2016
# Purpose: validate against servers
# Author: Ryan Rammell
#####################################################################################################
print 'Type in a server name for inquiry.'
$server = <>;

do{
	open (FILE, "<./servers.txt");
	@lines = <FILE>;
	close FILE;
	
	foreach $line (@lines){
		print "$line\n";
	}
}while($server = True);