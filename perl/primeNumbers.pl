#!/usr/bin/perl

@array_of_primes = (1, 2, 3, 5, 7, 11);
$sum_of_primes = 0;

sub push_prime_numbers_into_array{
	my $user_number = shift;
	
	foreach ($i = 12; $i <= $user_number; $i++){
		
		$not_prime = 0;
		FOREACH: foreach $prime (@array_of_prime){
			if ($prime == 1){
				next FOREACH;
			}
			if (($i % $prime) == 0){
				$not_prime = 1;
				last; #-- break
			}
		}
		
		if ($not_prime == 0){
			push @array_of_prime, $i;
		}
	}
}


print "This program will add up PRIME numbers from 1 to (whatever you put in)\n";
print "Please put in a number greater than 11\n";

chomp($user_choice = <>);

$error_trap = 0;

while ($error_trap == 0){
	if ($user_choice =~ /^\d+$/ && $user_choice > 11){
		$error_trap = 1;
	}
	else{
		print "Please put in a number > 11... you put in something invalid\n";
		chomp($user_choice = <>);
	}
}

push_prime_numbers_into_array($user_choice);

foreach $prime (@array_of_prime){
	$sum_of_prime += $prime;
	print "The SUM of prime numbers from 1 to $prime is $sum_of_primes\n";
}