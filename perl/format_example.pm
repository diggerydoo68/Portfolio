#!/usr/bin/perl



#--Sometimes you want to have nice format for output.  Here is a simple example...

#--I do a lot of this in the "standard" scripts I have written. I use a formats.pm file 
#--where I put all these format type of deals,...and I write using them.  
#--
#--In this example, I am just putting it in the same file so you can see the links.


format nice_output = 
   @<<<<<<<<<<<<<<<<<<<<    @||||||||||||||||||||||||||||   @>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
   $left_justified,         $center_justified,              $right_justified
.




#--to format, you need to have a "format" keyword with some stuff (which I have above)...
#--and you terminate it with a period like above.
#----------------------------------------------------------------------------------------


#--see that my scalar names are the same as the format deal?...that is because this is how they are written...
#-------------------------------------------------------------------------------------------------------------
$left_justified = "Hey...Im left";
$center_justified = "Hey...Im in the middle";
$right_justified = "Im over on the right side";


#--You need to set this variable here, this $~ one. It says to point to the format stuff....
#--Its the build in output variable.

$~ = "nice_output";

#--Then you use the "write" command.  Whatever is in the "format" name you use, gets written to if you have the scalars defined.

write;


