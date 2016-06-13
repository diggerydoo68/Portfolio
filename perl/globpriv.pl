#!/usr/bin/perl

#Global variable
$string = "Hello World!";

#function definition
sub PrintHello{
	# Private variable for PrintHello function
	my $string;
	$string = "Hello Perl!";
	print "Inside the function $string\n";
}

#function call
PrintHello();
print "Outside the function $string\n";