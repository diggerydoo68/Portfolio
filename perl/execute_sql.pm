#!/usr/bin/perl

sub execute_sql {
   #--This handles the sqlplus connection and returns the queries or inserts/updates that are generated
   #---------------------------------------------------------------------------------------------------
   my $num_of_parameters = @_;


   #---these are the parameters that are passed in.  "shift" takes them off the queue and loads them.  
   my $username = shift;
   my $password = shift;
   my $connect_string = shift;
   my $database_name = shift;
   my $sql_command = format_sql(shift);
   my $alternate_service_name = shift;    #--this one is optional.  Might be blank.

   #--Force the right number of parameters
   #--------------------------------------
   if ($num_of_parameters < 5){
      print "You need to use at least 5 parameters for the execute_sql.pm.  Try again.\n";
      print "Example:\n    execute_sql(<username>,<password>,<connect_string>,<database_name>,<sql_command>[,<optional_service_name>])\n";
      exit;
   } 
   
   #--house clean
   #-------------
   if (-e $command_file){
      system("rm $command_file");
   }

   #--Note.  A physical file is created at the directory in question with a chmod of 700, and then batched
   #         to the sqlplus command.  This will allow the password involved in connection to remain invisible
   #         from the "ps -ef | grep sqlplus" command.  This is by design.
   #
   #         This particular sub-routing tries to execute the passed in sql code in multitude ways.  First,
   #         we try the passed in connection string.  If that errors, we try standard database name which will
   #         default through TNS...and so forth.  That way we make the best effort possible to execute the
   #         SQL.
   #--------------------------------------------------------------------------------------------------------

   #--Make allowance for "as sysdba" strings.
   #-----------------------------------------
   if ($connect_string =~ /as sysdba/){
      $as_sysdba = 1;
   }
   else{
      $as_sysdba = 0;
   }


   #--Full connection string first
   #------------------------------

   open (FILE, ">$command_file");
   print FILE qq[connect $username/$password\@$connect_string\n$sql_command\nexit;\n];
   close FILE;
   system ("chmod 700 $command_file");
   my $return_values =  `sqlplus -S /nolog \@$command_file`;



   #--Check if the output has "ORA" errors in the return.
   #--Standard database name next through TNS
   #----------------------------------------------------
   if ($return_values =~ /ORA/){

      open (FILE, ">$command_file");
      if ($as_sysdba){
         print FILE qq[connect $username/$password\@$database_name as sysdba\n$sql_command\nexit;\n];
      }
      else{
         print FILE qq[connect $username/$password\@$database_name\n$sql_command\nexit;\n];
      }
      close FILE;
      system ("chmod 700 $command_file");
      $return_values =  `sqlplus -S /nolog \@$command_file`;
   }

   #--Check if the output has "ORA" errors in the return.
   #--Stripped database name now through TNS
   #-----------------------------------------------------
 

    if ($return_values =~ /ORA/ && $database_name =~ /_/){

      $new_database = substr $database_name, 0, index($database_name, '_');

      open (FILE, ">$command_file");
      if ($as_sysdba){
         print FILE qq[connect $username/$password\@$new_database as sysdba\n$sql_command\nexit;\n];
      }
      else{
         print FILE qq[connect $username/$password\@$new_database\n$sql_command\nexit;\n];
      }
      close FILE;
      system ("chmod 700 $command_file");
      $return_values =  `sqlplus -S /nolog \@$command_file`;
   }

   #--Check if the output has "ORA" errors in the return.
   #--Stripped connection string approach
   #----------------------------------------------------

   if ($return_values =~ /ORA/ && $connect_string =~ /_/){

      $new_connect_string = substr $connect_string, 0, index($connect_string, '_');

      open (FILE, ">$command_file");
      if ($as_sysdba){
         print FILE qq[connect $username/$password\@$new_connect_string as sysdba\n$sql_command\nexit;\n];
      }
      else{
         print FILE qq[connect $username/$password\@$new_connect_string\n$sql_command\nexit;\n];
      }
      close FILE;
      system ("chmod 700 $command_file");
      $return_values =  `sqlplus -S /nolog \@$command_file`;
   }

   #--If we got here, we are having problems connecting to this DB.  The last attempt
   #--is to use data from the DATABASES table and see if there is an "ALTERNATE_SERVICE_NAME"
   #--listed.  That ALTERNATE_SERVICE_NAME is the optional parameter passed in...
   #-----------------------------------------------------------------------------------------


   if ($return_values =~ /.*ORA-.*/ && $alternate_service_name ne ''){

      $temp_connect_string = substr $connect_string, 0, index($connect_string, '/');
      $new_connect_string = "$temp_connect_string/$alternate_service_name";

      open (FILE, ">$command_file");
      print FILE qq[connect $username/$password\@$new_connect_string\n$sql_command\nexit;\n];
      close FILE;
      system ("chmod 700 $command_file");
      $return_values =  `sqlplus -S /nolog \@$command_file`;
   }

   #--house clean
   #-------------
   if (-e $command_file){
      system("rm $command_file");
   }
   return $return_values;
}
1;
