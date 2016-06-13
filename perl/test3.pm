#!/usr/bin/perl


#--some regulare expressions
#---------------------------
$scalar = "these!~!are!~!some values";

$scalar =~ /(.*)!~!(.*)!~!(.*)/;    #--remember what fits inside the () synmbols will be captured into $1, $2,...$n respectively

print "values I just extracted with regular expression capture are ->  $1 $2 $3\n";


#--this does the same thing as above, but with the split function
($new1, $new2, $new3) = split /!~!/, $scalar;

print "values I just extracted with regular expression split are ->  $new1 $new2 $new3\n";


#---passing by reference
#------------------------

sub pass_by_reference{

   $reference = shift;

   print "You will get a reference thing here --> $reference\n";
   print "This is how you deference something passed by reference --> ${$reference}\n";

   $this_is_a_global_because_I_didnt_use_my = "this is some new values";
   $reference = \$this_is_a_global_because_I_didnt_use_my;  #--see now how we just changed the reference?

}

$some_values = "this is some values in this scalar";

pass_by_reference(\$some_values);    #--this backslash before the $ says: "Send a reference"

print "This is the reference we did before,...but different because I didn't use my -> $reference\n";
print "And it now has new values -> ${$reference}\n";

#--remember when I said a scalar can hold anything?...it can. It can hold a reference to another scalar, a reference
#--to an array or hash, or another hash, array, scalar,...and on and on.  
#------------------------------------------------------------------------------------------------------------------

#--I don't use references much.  I think it complicates things...and sometimes concise code actually makes things more
#--difficult to understand, because to get concise, you often have to introduce crap.  
#--
#-- Like...for example, what is this?  ${$array[$some_value]} <--hunh?  It looks like a derefrence of a scalar of an array.  But
#-- who cares?  Just make it easy...that is my motto.  Avoid complexity.....
#--------------------------------------------------------------------------------------------------------------------------------
