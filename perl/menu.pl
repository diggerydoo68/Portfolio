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


while (substr($user_response, 0, 1) =~ /Y|y|N|n/){
        if ($user_reponse) != /Yes/ || /No/{
                print "GoodBye!\n";
            }
        
        write;
        print "What would you like to eat?\n";
        chomp($user_response = <>);
        if (substr($user_response, 0, 1) =~ /pasta/){
                write;
                print "What type of Pasta?\n";
                chomp($user_response = <>)
            }else{
                    print "We dont serve that here! Please make another order.\n";
                    chomp($user_response = <>);
                }
        }

    

