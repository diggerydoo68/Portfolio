#!/usr/bin/perl


%a_hash_of_something = (
                        key1 => value1,
                        key2 => value2
                      );

#--If you haven't guessed it yet, the "keys" keyword pulls the key values from the hash.  Its like
#--split in a way. The foreach now has an array that it can loop through.  
#-----------------------------------------------------------------------------------------------=
foreach $key_value (keys %a_hash_of_something){
   #--See how you can get to both your key and the asociated value pair here?  Powerful stuff.
   print "$key_value -> $a_hash_of_something{$key_value}\n";
}


#--Array example now
#-------------------
@an_array = ('these ', 'are ', 'some ', 'values');
foreach $value (@an_array){
   print "$value";
}

print "\n"; #<--this is in here just so we don't get cluttered with the stuff above.


#--Scalar example last
#--I tried to line this up for clarity, but the spaces before the lines will show
#  on the print.  There are ways to clean this up...but for know, you be aware of it.
#----------------------------------------------------------------------------------------
$a_scalar = "This is a line
             this is also a line
             this is another line
             we got a lot of lines going on here.......COOL!!!";

foreach $line (split /\n/, $a_scalar){   #--The split command uses a regular expression.  In this case, /\n/ means 
                                         #--split on the newline character (which is hidden, but there anyway).
   print "Line is -> $line\n";
}

#--When you get this far, the next step is simply showing you how to create subroutines (which is REALLY easy)
#--and then we can start to actually write some code.  I suppose you could also see while loops, and some if/then
#--logic, but it is so similar to other  things that it will not be difficult to learn. You literally have some
#--of the building blocks now to begin creating some powerful programs.
#--------------------------------------------------------------------------------------------------------------
