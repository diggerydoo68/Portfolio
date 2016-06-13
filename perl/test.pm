#!/usr/bin/perl

$this_is_a_scalar = "Hello world...I am a scalar";

@this_is_an_array = ('Hello ', 'world ', '...', 'I ', 'am ', 'inside ', 'an ', 'array',  '...This all came from inside the array');


print 'this will print literal $this_is_a_scalar';

print "\n"; #--need this new line so it doesn't get cluttered

print "This will print out what is inside the variable....$this_is_a_scalar\n";

for ($i = 0; $i <= $#this_is_an_array; $i++){
   print "$this_is_an_array[$i]";   #--this just prints out each element and because I didn't put a '\n' in there, all same line.
}

#--And, if you didn't notice yet....starting a line in a file with a '#' symbol is a comment.  
#---
#--- I use a lot of comments in my code because it is good practice.  I encourage the habit early... :-)
#-----------


#--The thing you use to get input from the user is the <> operator....

print "\n\n\nPlease put in a value....anything, and press enter after...\n";
$randys_input = <>;

print "\n\n\nYou entered this stuff --> $randys_input\n";

#---You have some powerful stuff right here. These are some nuts and bolts to some heavy coding.....believe me.
#---The next stuff is Hash values...and it will make sense how it reduces to scalars.  And, then control 
#---structures,...and after that,...literally, you will be in a poistion to start writing code.  
#-------------------------------------------------------------------------------------------------------------
