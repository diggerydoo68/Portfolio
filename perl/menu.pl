#!/usr/bin/perl
format PASTAS = 
===============================================
@<<<<<<< @<<<<<< @<<<<<<< @<<<<<<<< 
$Gnocchi, $Al_dente, $Meatball, $Three_cheese
===============================================
.

format FOOD = 
===============================================
@<<<<<<< @<<<<<< @<<<<<<< @<<<<<<<< 
$pastas, $pizza, $salads, $dessert
===============================================
.

format TOP = 
===============================================
    Welcome to the Restaurant!
===============================================
.

select(STDOUT);
$~ = PASTAS;
$~ = FOOD;
$^ = TOP;

# $Gnocchi = ("Gnocchi");
# $Al_dente = ("Al dente");
# $Meatball = ("Meatball");
# $Three_cheese = ("Three Cheese");

@p = ("Gnocchi", "Al_dente", "Meatball", "Three Cheese");

$pastas = ("Pasta");
$pizza = ("Pizza");
$salads = ("Salads");
$dessert = ("Desserts");


print "Would you like to see the menu?(Yes/No)\n";
chomp($user_response = <>);

$error_trap = 0;

while($error_trap == 0){
	if ($user_response =~ /Ye/){
		$error_trap = 1;
		write;
		print "What would you like to order?\n";
		chomp($user_response = <>);
	}
	else{
		print "No manners, no service!\n";
		chomp($user_response = <>); 
	}
}

while($error_trap == 1){
	if ($user_response =~ /Pasta/){
		$i = 0;
		$error_trap = 2;
		foreach (@p){
			$Gnocchi = $p[$i++];
			$Al_dente = $p[$i++];
			$Meatball = $p[$i++];
			$Three_cheese = $p[$i++];
			write PASTAS;
		}
		print "What Type of Pasta would you like to order?\n";
		chomp($user_response = <>);		
	}
	else{
		print "No manners, no service!\n";
		chomp($user_response = <>); 
	}
}


    

