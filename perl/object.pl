#!/usr/bin/perl
# creating an instance of a class or otherwise known as an object

package Person;
sub new
{
	my $class = shift; # another private variable
	my $self = { # creation of private object named $self 
		_firstName => shift, # shift is returning the first value in an array(in this case _first name), deleting it and shifting the elements if the array list to the left by one
		_lastName => shift,
		_ssn		=> shift,
	};
	#print all the values just for clarification.
	print "First Name is $self->{_firstName}\n";
	print "Last Name is $self->{_lastName}\n";
	print "SSN is $self->{_ssn}\n";
	bless $self, $class; # the bless function tells the entity referenced by '$self' that is now an object in the Person package   
	return $self;
}

$object = new Person("Mohammad", "Saleem", '23234345');

sub getFirstName {
	return $self->{_firstName};
}