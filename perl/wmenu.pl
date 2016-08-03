#!/usr/bin/perl

require "global.pl";

#-- Formats
#-----------

format GOODBYE = 
========================================================================
			Thank you, come again!
========================================================================
.

format FOOD = 
========================================================================
@<<<<<<<          @<<<<<<    @<<<<<<<<		@<<<<<<<<<<<<
$pastas, 		  $pizza,    $salads,      	$dessert,
========================================================================
.

format PASTAS = 
=========================================================================
@<<<<<<<<<        @<<<<<<<<<<    @<<<<<<<<<<<<<<        @<<<<<<<<<<<<
$Al_dente,         $Meatball,      $Three_cheese,       	$Gnocchi,	
=========================================================================
.

format PIZZAS = 
=========================================================================
@<<<<<<<<<        @<<<<<<<<<<    @<<<<<<<<<<<<<<        @<<<<<<<<<<<<
$Pepperoni,       $Meatlovers,   $Hawaiian,       		$Plain_cheese,	
=========================================================================
.

format SALADS = 
=========================================================================
@<<<<<<<<<        @<<<<<<<<<<    @<<<<<<<<<<<<<<        @<<<<<<<<<<<<
$chef,            $house,        $garden,       	    $tossed,	
=========================================================================
.

format DESSERTS = 
=========================================================================
@<<<<<<<<<        @<<<<<<<<<<    @<<<<<<<<<<<<<<        @<<<<<<<<<<<<
$milkshakes,      $sundaes,      $cheesecake,       	$pie,	
=========================================================================
.
 
format TOP = 
=========================================================================
			Welcome to the Restaurant!
=========================================================================
.

#-- select(STDOUT);
# -----------------------

#-- global Variables
#-------------------
$^ = "TOP";

$pastas = ("Pasta");
$pizza = ("Pizza");
$salads = ("Salads");
$dessert = ("Desserts");
$Al_dente = ("Al_dente");
$Meatball = ("Meatball");
$Three_cheese = ("Three Cheese");
$Pepperoni = ("Pepperoni");
$Meatlovers = ("MeatLovers");
$Gnocchi = ("Gnocchi");

#-- Main menu
sub mm {
	print "Would you like to see the menu?(Yes/No)\n";
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

#--------------------------------
#-- Calling Main Menu
#--------------------------------
mm();

#-- Pizza Subs(not the kind you think)
#-------------------------------------
sub pizzas{
	print "What type of pizza would you like?\n";
	chomp($user_response = <>);
	
	$error_trap = 0;
	
	while($error_trap == 0){
		if ($user_response =~ /pizza/){
			$error_trap = 1;
			$~ = "PIZZAS";
			write;
			
		}
	}
}


#-- Pasta subs
#-------------------------
sub pastas{
	$~ = "PASTAS";
	write;
	print "What type of pasta dish would you like to order?\n";
	chomp($user_response = <>);
	$error_trap = 0;
	while($error_trap == 0){		
		if ($user_response =~ /gnocchi/){
			$error_trap = 1;
			$~ = "GOODBYE";
			write;
			exit(0); # -- leaves loop
			}
		else{
			print "No manners, no service!\n";
			chomp($user_response = <>); 
			}
		}
	}

#-- dessert funtion
#------------------
sub desserts{

}

#-- salad function
#-----------------
sub salads{

}









# Snippets
#--------------------------



while($error_trap == 1){
	if ($user_response =~ /pasta/){
		$i = 0;
		$error_trap = 2;
		$~ = "PASTAS";
		write;
		print "What Type of Pasta would you like to order?\n";
		chomp($user_response = <>);		
	}
	else{
		print "No manners, no service!\n";
		chomp($user_response = <>); 
	}
}

while($error_trap == 0){
	if ($user_response =~ /pizza/){
		$i = 0;
		$error_trap = 3;
		$~ = "PIZZAS";
		write;
		print "What Type of Pizza would you like to order?\n";
		chomp($user_response = <>);		
	}
	else{
		print "No manners, no service!\n";
		chomp($user_response = <>); 
	}
}


