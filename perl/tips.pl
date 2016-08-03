#!/usr/bin/perl

format TOP = 
===============================================
    Welcome to the tip calculator!
===============================================
.

$^ = "TOP";

#-- Main menu
sub tips {
    write;
	<>;
	chomp($user_response = <>);

	$error_trap = 0;
	while($error_trap == 0){
		if ($user_response =~ /Ye/){
			$error_trap = 1;
			$~ = "FOOD"; # -- this Must be invoked in order to print the format
			write;
			print "What would you like to order?\n";
			chomp($user_response = <>);
			if ($user_response =~ /pasta/){
				pastas();
			}
			if ($user_response =~ /pizza/){
				pizzas();
			}
			if ($user_response =~ /dessert/){
				desserts();
			}
			if ($user_response =~ /salad/){
				salads();
			}
			if ($user_response =~ /No/){
				$~ = "GOODBYE";
			}
		}
	}
}