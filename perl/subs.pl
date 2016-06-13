#!/usr/bin/perl

# function definition
sub Average{
	# get total number of arguments passed.
	$n = scalar(@_); # the @_ tag is an array.
	$sum = 0;
	
	foreach $item (@_){
		$sum += $item;
	}
	$average = $sum / $n;
	
	print "Average for the given numbers : $average\n";
}

#function call
Average(10, 20, 30);

#two more methods of creating subroutines are as follows
sub volume {
	my $height = shift;
	my $weight = shift;
	my $depth = shift;
	
	return $height * $width * $depth;
	
}

sub volume {
	my ($height, $weight, $depth) = @_;
	
	return $height * $ $weight * $depth;
}