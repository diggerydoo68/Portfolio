#!/usr/bin/perl

print "Put in yes or no\n";
chomp($input = <>);

while (substr($input, 0, 1) =~ /Y|y/ && uc($input) !~ /.*YEPPERS.*/){
   print "Inside the while loop\n";
   print "Put in yes or no\n";
   chomp($input = <>);
}


 