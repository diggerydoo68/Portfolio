#!/usr/bin/perl

sub lcov5 {
	print "It is lcov5";
}

#!/usr/bin/perl
format DATABASE = 
===============================================
@<<<<<<<<< @<<<<<<<<<<<<<<< @<<<<<<<<<  
$XDCOVD, $XDCOVE, $XDSFIA 
===============================================
.

format SERVER = 
===============================================
@<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<< @<<<<< 
$lcov5, $lcov27, $lcov7
===============================================
.

format TOP = 
===============================================
             Database Inventory
===============================================
.

select(STDOUT); #Perl reads this from bottom up so the first write statement will write TOP and then SERVER What are the 
$~ = DATABASE;
$~ = SERVER;
$^ = TOP;

$lcov5 = ("lcov5");
$lcov27 = ("lcov27");
$lcov7 = ("lcov7");

$XDCOVD = ("XDCOVD");
$XDCOVE = ("XDCOVE");
$XDSFIA = ("XDSFIA");

print "Would you like to access the database?(Yes/No)\n";
chomp($user_response = <>);
$error_trap = 0;

while ($error_trap == 0){
	if(substr($user_response, 0, 1) =~ /Y|y|N|n/){
        write;
        print "What machine would you like to inquire about?\n";
        chomp($user_response = <>);
		if (substr($user_response, 0, 1) =~ /l/){
                write DATABASE;
                print "Which database?\n";
                chomp($user_response = <>)
            }else{
                    print "We dont serve that here! Please make another order.\n";
                    chomp($user_response = <>);
                }
        }else{
			print "We dont serve that here! Please make another order.\n";
			chomp($user_choice = <>);
		}
		        
	}


    

