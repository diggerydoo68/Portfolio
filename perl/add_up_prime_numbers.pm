#!/usr/bin/perl

#--This is also written just as an exmaple of how to do some basic math things inside of perl.
#--This one isn't quite so simple however...gets fancy....
#--------------------------------------------------------------------------------------------


#--global variables here.
@array_of_primes = (1, 2, 3, 5, 7, 11);    #--there are more, but we will just initialize them here
$sum_of_primes = 0;


#--sub routines here
sub push_prime_numbers_into_array{

    #--This uses the math "%" (modulo) operator. It returns the "remainder" from integer division.  
    #--So 5/4 for example has remainder of 1. So 5%4 will return 1;

    #--All prime numbers are divisible only by 1 and itself...so if we divide numbers by a list of
    #--primes, it will have a remainder unless it is itself prime. So, we are going to loop through
    #--and find which numbers are prime and which are not....and if they are prime, we add them to
    #--our array.  

    my $user_number = shift;  #--This is what the user entered from the prompt below...
                              #--We are going to find all the primes between 11 and what the user input...

    foreach ($i = 12; $i <= $user_number; $i++){   #--we are starting at 12 because 11 is in our prime list already
    
       $not_prime = 0;
       FOREACH: foreach $prime (@array_of_primes){    #--Randy, this FOREACH: value is called a label.  It 
                                                      #--allows you to sometimes break out of loops and things.
                                                      #--You can use any word...just put the colon after...

          #--We don't want to use 1.  Everything is divisible by 1.  So skip it...
          #--There are more elegant ways to do this than "next", but I am doing it in this program to show you the concept.
          #--
          #--Generally you try to avoid these things,...because it is a lot like a "GOTO" statement.  In this case, however,
          #--we are just going for another iteration, and it is usually acceptable to do.
          #-----------------------------------------------------------------------------------------------------------------
          if ($prime == 1){
             next FOREACH;
          }

          #--We test for remainder here.  If the remainder is zero,..then division was clean, and this is not prime....
          #------------------------------------------------------------------------------------------------------------
          if (($i % $prime) == 0){
             $not_prime = 1; 
             last;    #--we know we have a non-prime, so just break out of the foreach loop and continue. "last" is how you break in perl.
                      #--It breaks out of whatever loop you happen to be in,...and in this case, we are in the FOREACH: loop.  We don't need
                      #--to specify the label because by default it breaks from whatever it is in.  So, inside of loops, "next" and "last" 
                      #--do some of this continue or break stuff in other languages....
          }
       }

       #--We just tested our number against the entire list of primes, and nothing divides eveningly into it.  So, it is itself a prime.
       #--Lets push it into our array list.  This push command tacks it into the array into the next index, so our array grows...
       #--------------------------------------------------------------------------------------------------------------------------------
       if ($not_prime == 0){ 
          push @array_of_primes, $i;
       }
    }
}

#---------------
#-- MAIN SECTION
#---------------

#--this was basically copied from the other program add_numbers,...so it is all the same...

print "This program will add up PRIME numbers from 1 to (whatever you put in)\n";
print "Please put in a number greater than 11\n";

chomp($user_choice = <>);   #--remember what chomp() does?

$error_trap = 0;     

while ($error_trap == 0){   #--remember we are forcing them to give us what we want?
                               
   if ($user_choice =~ /^\d+$/ && $user_choice > 11){ 
      $error_trap = 1;  
                       
   }
   else{
      print "Please put in a number > 11...you put in something invalid\n";
      chomp($user_choice = <>);   #--and we start to go round and round till we get what we want....
   } 
}

push_prime_numbers_into_array($user_choice);    #--find all the primes between 11 and the number they put in...

#--now lets add those primes and display them....

foreach $prime (@array_of_primes){  #--now, lets add those primes up and do some displays....
 
   $sum_of_primes +=  $prime;
   print "The SUM of prime numbers from 1 to $prime is $sum_of_primes\n";

}
