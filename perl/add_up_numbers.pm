#!/usr/bin/perl


#--This is written just as an exmaple of how to do some basic math things inside of perl.
#--it is for reference only.

print "This program will add up numbers from 1 to (whatever you put in)\n";
print "Please put in a number greater than 1\n";



chomp($user_choice = <>);   #--The chomp removes the newline from what the user put in
                            #--Sometimes if you have a "\n" on there it really messes things up.
                            #--If there is no "\n" on there, then chomp does nothing. 

$error_trap = 0;            #--I'm gunna force the user to put in a valid answer....  This is one way...

while ($error_trap == 0){   #--The '==' compares numbers.  The 'eq' compares characters.  
                            #--So, this while loop, I am comparing numbers to force an error trap.
                               
   #--regular expression here to make sure we are getting only numbers back, and also checking if we are > 1
   #--The '^' says "check from beginning of input". The '\d+' is "one or more digits ONLY".  The '$' means "at end of line".
   #--See why we use "chomp"?  We don't want anything except numbers in their input, and that is all.
   #--
   #--The '&&' is a logical "AND", so we not only want ONLY nunmbers,...we want numbers > 1.  We are forcing it.
   #-------------------------------------------------------------------------------------------------------------------
   if ($user_choice =~ /^\d+$/ && $user_choice > 1){ 
      $error_trap = 1;         #--If we drop into here, we got what we want, and this while loop will end.  Otherwise,...
                               #--round and round we go until the user gives us what we asked for.   
   }
   else{
      #--we prompt for valid stuff, cuz we got junk from the usre.
      print "Please put in numbers...you put in something invalid\n";
      chomp($user_choice = <>);   #--and we start to go round and round till we get what we want....
   } 
}

$final_output = 0;     #--gunna use this to do some addition....

for ($i = 1; $i <= $user_choice; $i++){
   #--this does the add.  This is shorthand for $final_output = $final_output + $i
   $final_output += $i;
}

print "The sum of the integers from 1 to $user_choice is $final_output\n";


   

