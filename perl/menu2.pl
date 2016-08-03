#!/usr/bin/perl

use Switch;
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
$~ = FOOD;
$^ = TOP;

$Gnocchi = ("Gnocchi");
$Al_dente = ("Al dente");
$Meatball = ("Meatball");
$Three_cheese = ("Three Cheese");

$pastas = ("Pasta");
$pizza = ("Pizza");
$salads = ("Salads");
$dessert = ("Desserts");


print "Would you like to see the menu?(Yes/No)\n";
chomp($user_response = <>);



switch($user_response){
	case "Yes"	{write;}
	case "No"	{print "Fine!"}
}
