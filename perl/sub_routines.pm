#!/usr/bin/perl

#--Global variables you should looked at and set in every one of these perl scripts.
#--Make sure they are right....
#--
#--  Utility Functions (called by others internally):
#--  ------------------------------------------------
#--     clear_screen() 
#--     sort_services (hash_ref) returns hash_ref
#--     display_menu_choices(menu_ref) returns user_response
#--     exit_the_program() 
#--     schema_for_choosing(heading, for_what_purpose, connection_string, database_name, transitional) returns user_response
#--     databases_for_choosing(heading, for_what_purpose) returns user_response
#--     password_for_schema(heading, for_what_purpose) returns user_response
#--     get_the_queue(heading, for_what_purpose, database_name, connecttion_string, schema, password) returns user_response
#--     display_individual_queue_info(heading, for_what_purpose, connection_string, database_name, schema, queue_name, queue_table) returns user_response 
#--     database_and_connection_string(database_id) returns database_name||!~!||connection_string  ||'!~!|| transtional
#--     get_password_from_auth(account_name) return password
#--     get_cluster_data(server_name) return @array of cluster_id, cluster_name, location, internal-or-external
#--     set_available_variable_for_services_write(lots of input) set global variables for a write
#--     set_instance_variable_for_services_write(lots of input) sets global variables for a write
#---------------------------------------------------------------------------------------------------------------------------------------------------------
#--  Menu Functions:
#--  ---------------
#--     main_menu(menu_ref) returns user_response
#--     display_scripts_menu(menu_ref) returns menu_ref
#--     display_queue_menu(menu_ref) returns menu_ref
#--     connection_utility_menu(menu_ref) returns menu_ref
#--     customer_utility_menu(menu_ref) returns menu_ref
#--     nifty_sql_menu(menu_ref) returns menu_ref
#--     post_dr_or_upgrade_menu(menu_ref) returns menu_ref
#---------------------------------------------------------------------------------------------------------------------------------------------------------
#-- Process Functions:
#-- ------------------
#--     active_running_transactions() returns menu_ref
#--     batch_process_monitoring() returns menu_ref
#--     check_A_numbers() returns menu_ref
#--     check_db_connections_on_database() returns menu_ref
#--     check_db_connections_on_server() returns menu_ref
#--     check_dbo_account() returns menu_ref
#--     display_connect_strings() returns menu_ref
#--     display_customer_connections() returns menu_ref 
#--     display_customers_by_server() returns menu_ref 
#--     display_database_services_cluster() returns menu_ref
#--     display_database_services() returns menu_ref
#--     display_database_services_server() returns menu_ref
#--     display_database_services_cluster() returns menu_ref
#--     display_individual_db_info() returns menu_ref
#--     display_queue_items() return menu_ref 
#--     display_servers(prompt_for_return) returns menu_ref
#--     FRA_consumption_monitoring(prompt for return) returns menu_ref
#--     post_dr_or_upgrade_monitoring() returns menu_ref
#--     show_asm_space_usage() returns menu_ref
#--     tablespace_usage_by_database() returns menu_ref
#--     tablespace_usage_by_server() returns menu_ref
#---------------------------------------------------------------------------------------------------------------------------------------------------------

#--required global here
#----------------------
$base_dir="/fisc/oracle/xtrac-dba/standard_work";

#--Pull in the generic stuff
#---------------------------

require "$base_dir/environment_variables.pm";
require "$base_dir/format_header.pm";
require "$base_dir/execute_sql.pm";
require "$base_dir/formats.pm";


#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
#--Utility functions are placed here
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

sub set_instance_variable_for_services_write{
   #--This sub takes input variables and associates
   #--instance names and service names to the correct
   #--position for a write below. 
   #-------------------------------------------------

   my $instance1 = shift;
   my $instance2 = shift;
   my $instance3 = shift;
   my $instance4 = shift;
   #--------------------------------------------
   my $server_name_position = shift;
   my $test_server = shift;
   my $test_instance = shift;
   #--------------------------------------------
   my $service_instance1 = shift;
   my $service_instance2 = shift;
   my $service_instance3 = shift;
   my $service_instance4 = shift;

   my $position = 0;

   if ($test_instance eq $service_instance1){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $service_instance2){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $service_instance3){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $service_instance4){
      $position = $server_name_position{$test_server};
   } 

   if ($position eq '1'){
      $instance1 = "$test_instance(r)";
   }
   elsif ($position eq '2'){
      $instance2 = "$test_instance(r)";
   }
   elsif ($position eq '3'){
      $instance3 = "$test_instance(r)";
   }
   elsif ($position eq '4'){
      $instance4 = "$test_instance(r)";
   }

   return ($instance1, $instance2, $instance3, $instance4);
}

sub set_available_variable_for_services_write{
   #--This sub takes input variables and associates
   #--instance names and service names to the correct
   #--position for a write below. 
   #-------------------------------------------------

   my $instance1 = shift;
   my $instance2 = shift;
   my $instance3 = shift;
   my $instance4 = shift;
   #--------------------------------------------
   my $server_name_position = shift;
   my $test_server = shift;
   my $test_instance = shift;
   #--------------------------------------------
   my $available_instance1 = shift;
   my $available_instance2 = shift;
   my $available_instance3 = shift;
   my $available_instance4 = shift;
   #--------------------------------------------
   my $preferred_instance1 = shift;
   my $preferred_instance2 = shift;
   my $preferred_instance3 = shift;
   my $preferred_instance4 = shift;


   my $position = 0;

   if ($test_instance eq $available_instance1){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $available_instance2){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $available_instance3){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $available_instance4){
      $position = $server_name_position{$test_server};
   } 

   #---------------------------------------------------- 
   if ($position eq '1' && $instance1 eq ""){
      $instance1 = $test_instance . "(a)";
   }
   elsif ($position eq '2' && $instance2 eq ""){
      $instance2 = $test_instance . "(a)";
   }
   elsif ($position eq '3' && $instance3 eq ""){
      $instance3 = $test_instance . "(a)";
   }
   elsif ($position eq '4' && $instance4 eq ""){
      $instance4 = $test_instance . "(a)";
   }

   #-----------------------------------------------------
   my $position = 0;

   if ($test_instance eq $preferred_instance1){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $preferred_instance2){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $preferred_instance3){
      $position = $server_name_position{$test_server};
   } 
   elsif ($test_instance eq $preferred_instance4){
      $position = $server_name_position{$test_server};
   } 

   #---------------------------------------------------- 
   if ($position eq '1' && $instance1 eq ""){
      $instance1 = $test_instance . "(p)";
   }
   elsif ($position eq '1' && $instance1 ne ""){
      $instance1 .= "(p)";
   }
   elsif ($position eq '2' && $instance2 eq ""){
      $instance2 = $test_instance . "(p)";
   }
   elsif ($position eq '2' && $instance2 ne ""){ 
      $instance2 .= "(p)";
   }
   elsif ($position eq '3' && $instance3 eq ""){
      $instance3 = $test_instance . "(p)";
   }
   elsif ($position eq '3' && $instance3 ne ""){
      $instance3 .= "(p)";
   }
   elsif ($position eq '4' && $instance4 eq ""){
      $instance4 = $test_instance . "(a)";
   }
   elsif ($position eq '4' && $instance4 ne ""){
      $instance4 .= "(p)";
   }

   return ($instance1, $instance2, $instance3, $instance4);
}

sub get_cluster_data{
   #--This receives a database_name and returns
   #--cluster_id, cluster_name, location and internal_or_external 
   #--in an array.
   #------------------------------------------------------------

   my $database_name = shift;

   my $command = qq[select c.cluster_id   ||'!~!'||
                           c.cluster_name ||'!~!'||
                           c.location     ||'!~!'||
                           c.internal_or_external
                      from clusters c join servers s on (c.cluster_id = s.cluster_id)
                    where upper(s.server_name) like upper('$database_name');];
   my @cluster_array = split /!~!/,  execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command);
   return @cluster_array;
}


sub get_password_from_auth{
   #--This receives a user_account (usually a DBO) and 
   #--tries for auth on it
   #--------------------------------------------------

   my $account_name = lc shift;

   chomp(my $password =  `$auth $account_name`);

   if ($password eq ''){
      return "NOT FOUND";
   }
   else{
      return $password;
   }
}

sub database_and_connection_string{
   #--This pulls a database_name and connection-string from XTSDEVC and returns both.
   #---------------------------------------------------------------------------------

   my $database_id = shift;

   $command = qq[select distinct d.database_name ||'!~!'|| c.scan_name ||':1521/' || 
                        decode(d.alternate_service_name, NULL, d.database_name, d.alternate_service_name) ||'!~!'|| s.transitional
                  from databases d join clusters c on (d.cluster_id = c.cluster_id)
                                   join servers s on (c.cluster_id= s.cluster_id)
                 where d.database_id = $database_id;];

   ($database_name, $connection_string, $transitional) = split /!~!/,  execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command);
    chomp ($connection_string);

    return ("$database_name!~!$connection_string!~!$transitional");
}

sub clear_screen{
   #---simply clear the screen
   #--------------------------
   system("clear");
}

sub sort_services{

   #--The values returned from the "srvctl status service" command
   #--can be in mixed up order...like 3 before 1 and so forth.
   #--This routine just sorts those so they can be in order
   #--------------------------------------------------------------------
  
   my $hash_ref = shift;
   %return_value = {};

   foreach $key (keys %{$hash_ref}){

      if ($hash_ref->{$key} =~ /.*1/){
         $return_value{1} = $hash_ref->{$key};
      }
      elsif ($hash_ref->{$key} =~ /.*2/){
         $return_value{2} = $hash_ref->{$key};
      }
      elsif ($hash_ref->{$key} =~ /.*3/){
         $return_value{3} = $hash_ref->{$key};
      }
   }
   return \%return_value;
}

sub display_menu_choices{

   #--There are items in the standard_work_utility.pm program that 
   #--are ordered pairs for each menu.  This simply displays those
   #--in proper order.  The "format" is set in what routine calls 
   #--this...which is the "$~" value.
   #
   #--This thing also makes sure a valid choice is given by the 
   #--end user.
   #-------------------------------------------------------------

   my $menu_ref = shift;

   foreach $menu_index (sort keys %{$menu_ref}){

      $menu_choice = $menu_ref->{$menu_index}->[0];
      $subroutine  = $menu_ref->{$menu_index}->[1]; 

      write;

   }
   chomp($user_choice = <>);
   
   my $valid_choice = 0;
   foreach $menu_index (sort keys %{$menu_ref}){

      if ($user_choice eq $menu_index){
         $valid_choice = 1;
      }
   }

   if ($valid_choice == 1){
      return $menu_ref->{$user_choice}->[1];
   }
   else{
      return "bad choice";
   }
}

sub exit_the_program{

   #--Self explanitory
   #------------------

   clear_screen();
   print "\n\n\n\t\t\tThank you for using this program.  Have a nice day\n";
   exit;
}

sub schema_for_choosing{

   #--This thing pulls the Schema names from XTSDEVC that are associated with a specific
   #--database_id that is passed in.  This routin format the output, and it also
   #--enforces that a valid choie is actually put in from the end user.
   #--------------------------------------------------------------------------------

   $heading = shift;
   $for_what_purpose = shift;
   chomp(my $connection_string= shift);
   chomp(my $database_name = shift);
   chomp(my $transitional = shift);


   $command = qq[select username 
                   from dba_users
                  where username like '%DBO'
                 order by 1;];

   while (TRUE){
      #--NOTE....this code also traps to make sure only a valid index is chosen by the end user.....
      #--This hash is used for that...

      $valid_answers{'q'} = 'TRUE';  #--this will allow them to quit
      $schema_name{'q'} = 'q';

      #--write the header on the screen
      #--------------------------------
      clear_screen();
      $~ = "display_screen_header";
      write;

      #--Now the stuff for this particular item
      #----------------------------------------
      $~ = "display_schema_for_choosing";
      print "                             Schema_ID    Schema_Name\n";
      print "                             ---------    ------------------------------------------\n";

      if ($transitional eq 'SLC'){
         $password = $slc;
      }
      else{
         $password = $pss;
      }

      $pk_value = 1;


      foreach $schema_name  (split /\n/, execute_sql('xdbaprod', $password, $connection_string, $database_name, $command)){


            $valid_answers{$pk_value} = 'TRUE';
            $schema_name{$pk_value} = $schema_name;
   

            write; 
            $pk_value++;
      }

      $~ = "center_entry";
      $center_entry = "Please choose an ID from the list or (q) to quit\n  ";
      write;

      chomp(my $user_input = <>);
      if ($valid_answers{$user_input} eq 'TRUE'){
         return $schema_name{$user_input};
      }
   }   
}

sub databases_for_choosing{

   #--This thing pulls the DBs from XTSDEVC and allows the user to select one of those
   #--for whatever is being performed.  This routine formats the output, and it also
   #--enforces that a valid choice is actually put in from the end user.
   #--------------------------------------------------------------------------------

   $heading = shift;

   $heading .= " [Containers and DRs are excluded]";

   $for_what_purpose = shift;

   my $command = qq[SELECT VALUE
                    FROM (SELECT DISTINCT
                                    d.database_id
                                    || '!~!'
                                    || d.database_name
                                    || '!~!'
                                    || e.environment_name VALUE,
                                    e.environment_name
                   FROM databases d JOIN databases_to_environments j on (d.database_id = j.database_id)
                                    JOIN environments e ON (j.environment_id = e.environment_id)
                     WHERE d.is_a_container = 'N'
                       AND d.is_a_dr = 'N'
                       AND d.is_accessible = 'Y'
                  ORDER by e.environment_name);];
   
   while (TRUE){
      #--NOTE....this code also traps to make sure only a valid index is chosen by the end user.....
      #--This hash is used for that...

      $valid_answers{'q'} = 'TRUE';  #--this will allow them to quit

      #--write the header on the screen
      #--------------------------------
      clear_screen();
      $~ = "display_screen_header";
      write;
      $~ = "display_databases_for_choosing";

      #--Now the stuff for this particular item
      #----------------------------------------
      print " ID   Database Name  Cust Env                         ID   Database Name  Cust Env                         ID   Database Name  Cust Env\n";
      print " ---- -------------- ------------------------------ | ---- -------------- ------------------------------ | ---- -------------- ------------------------------\n";

      $toggle = '1';


      foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

         if ($toggle eq '1'){
            ($index1, $database_name1, $env_name1) = split /!~!/, $line;
            $valid_answers{$index1} = 'TRUE';
            $toggle = '2';
         }
         elsif ($toggle eq '2'){
            ($index2, $database_name2, $env_name2) = split /!~!/, $line;
            $valid_answers{$index2} = 'TRUE';
            $toggle = '3';
         }
         elsif ($toggle eq '3'){
            ($index3, $database_name3, $env_name3) = split /!~!/, $line;
            $valid_answers{$index3} = 'TRUE';
            $toggle = '1';
            write;
         }
      }

      #final write
      if ($toggle eq '2'){
         #--we have a value in 1, but 2 and 3 are just old stuff.
         $index2 = "";
         $database_name2 = "";
         $env_name2 = "";
         $index3 = "";
         $database_name3 = "";
         $env_name3 = "";
         write;
      }
      elsif ($toggle eq '3'){
         #--We have a value in 1 and 2, but 3 is just old stuff.
         $index3 = "";
         $database_name3 = "";
         $env_name3 = "";
         write;
      }
      $~ = "center_entry";
      $center_entry = "Please choose an ID from the list or (q) to quit:   ";
      write;

      chomp(my $user_input = <>);
      if ($valid_answers{$user_input} eq 'TRUE'){
         return $user_input;
      }
   }
}

#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
#--Menu functions are placed here
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\


sub main_menu{

   #--Display the main menu on the screen
   #-------------------------------------

   my $menu_ref = shift;

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Main Menu Level 1";
      $for_what_purpose = "(Utility Scripts)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                                     Subroutine\n";
      print "                             ---------    -------------------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub display_scripts_menu{

   #--Display the script menu to the screen
   #---------------------------------------

   my $menu_ref = shift;

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Scripts Menu Level 2";
      $for_what_purpose = "(General Display for Various Data)";
      write; 

      #---Now the stuff for this specific menu
      #--------------------------------------- 
      $~ = "standard_menu";
      print "                             Menu Item    Name                                                     Subroutine\n";
      print "                             ---------    -------------------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub display_queue_menu{

   #--Queue menu display
   #--------------------
  
   my $menu_ref = shift; 

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Queue Scripts Menu Level 2";
      $for_what_purpose = "(Utility Scripts)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                        Subroutine\n";
      print "                             ---------    ------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub connection_utility_menu{

   #---Connection Utility menu
   #----------------------------
  
   my $menu_ref = shift; 

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Connection Utility Menu Level 2";
      $for_what_purpose = "(Utility Scripts)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                        Subroutine\n";
      print "                             ---------    ------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub post_dr_or_upgrade_menu{

   #---This is for post DR and Upgrades
   #-----------------------------------

   my $menu_ref = shift; 

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Post DR or Upgrade Monitoring Menu Level 2";
      $for_what_purpose = "(Monitors every 2 min)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                        Subroutine\n";
      print "                             ---------    ------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub nifty_sql_menu{

   #---nifty_sql_menu
   #-----------------
  
   my $menu_ref = shift; 

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Nifty SQL Menu Level 2";
      $for_what_purpose = "(SQL Scripts)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                        Subroutine\n";
      print "                             ---------    ------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub customer_utility_menu{

   #---Customer Utility menu
   #----------------------------
  
   my $menu_ref = shift; 

   while (TRUE){
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Customer Utility Menu Level 2";
      $for_what_purpose = "(Utility Scripts)";
      write; 

      #--Now the stuff for this specific menu
      #--------------------------------------
      $~ = "standard_menu";
      print "                             Menu Item    Name                                        Subroutine\n";
      print "                             ---------    ------------------------------------------  ---------------------------------\n";

      my $return_value = display_menu_choices($menu_ref);
      
      unless ($return_value eq 'bad choice'){
        return $return_value;
      }
   }
}

sub password_for_schema{

   #--This routine prompts the user for a schema password, and returns it
   #---------------------------------------------------------------------
   $heading = shift;
   $for_what_purpose = shift;
   

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   write; 
   $~ = "center_entry";
   $center_entry = "Please enter a password, or 'q' to quit. (note...the password nor 'q' will display):";
   write;

   system("stty -echo");
   chomp($return_value = <>);
   system("stty echo");

   return $return_value;
} 

sub get_the_queue{

   #--Inside of a "DBO" schema in a given Database, there are potentially many queues.
   #--This routine displays those to the screen, and allows the user to select one, or
   #--to simply quit this routine with a 'q'.  If they choose a queue name, the queue
   #--name and the associated queue_table are returned. This allows for possibly clearing
   #--the queue in further actions.
   #-------------------------------------------------------------------------------------

   $heading = shift;
   $for_what_purpose = shift;
   $database_name = shift;
   $connection_string = shift;
   $schema = shift;
   $password = shift;

   $command = qq[SELECT trim(name) ||'!~!'|| 
                        trim(queue_table) ||'!~!'|| 
                        trim(queue_type) ||'!~!'|| 
                        trim(max_retries) ||'!~!'|| 
                        trim(retry_delay) ||'!~!'|| 
                        trim(dequeue_enabled) ||'!~!'|| 
                        trim(retention)
                   FROM user_queues
                ORDER by 1;];

   my %valid_answer = {};
   $valid_answer{'q'} = "q";

   while (TRUE){
      #--write the header on the screen
      #--------------------------------
      clear_screen();
      $~ = "display_screen_header";
      write; 

      #--Now the stuff for this particular item
      #----------------------------------------
      $~ = "display_queue_info";
      print "  Queue Name                      Queue Type                      Type                  Mx Retr Delay   Enabled    Retention\n";
      print "  ------------------------------  ------------------------------- --------------------- ------- ------- ---------- -------------\n";

      foreach $line  (split /\n/, execute_sql($schema, $password, $connection_string, $database_name, $command)){

         ($queue, $queue_table, $queue_type, $max_retries, $retry_delay, $dequeue_enabled, $retention) = split /!~!/, $line;
         $valid_answer{$queue} = $queue_table;

         write;
      }

     $~ = "center_entry";
     $center_entry = "Please enter a queue name for additional process  or 'q' to quit: ";
     write;
     chomp ($user_choice = <>);

     if ($valid_answer{$user_choice} eq 'q'){
        return "q,q";
     } 
     else{
       return "$user_choice,$valid_answer{$user_choice}";
     } 
   }
}  

sub display_individual_queue_info{

    #--Self explanatory
    #------------------

    $heading  = shift;
    $for_what_purpose = shift;
    $connection_string = shift;
    $database_name = shift;
    $schema = shift;
    $password = shift;
    $queue_name = shift;
    $queue_table = shift;


   while (TRUE){
      #--write the header on the screen
      #--------------------------------
      clear_screen();
      $~ = "display_screen_header";
      write; 

      $command = qq[select count(*) 
                      from $queue_table
                     where q_name = '$queue_name';];

      $count =  execute_sql($schema, $password, $connection_string, $database_name, $command); 

      $command = qq[select consumer_name 
                      from user_queue_subscribers
                     where queue_name = '$queue_name';];
                   
   
      $subscribers = execute_sql ($schema, $password, $connection_string, $database_name, $command);


      $~ = "individual_queue_info";

      print "  Database Name Schema                     Queue Name              Queue Table                     Count   Subscribers\n";
      print "  ------------- -------------------------- ----------------------- ------------------------------- ------- --------------------\n";

      write;

      print "\nDo you want to clear this queue of counted items (y/n)?\n";
 
      chomp($user_choice = <>);
      if ($user_choice eq 'y'){
         return "clear the queue";
      }
      elsif ($user_choice eq 'n'){
         return "display_queue_menu";
      }
   }
}

sub clear_the_queue{
 
   #--This routine does some physical stuff, so there are serveral checks in here to make sure things 
   #--are intentional and set correctly BEFORE presing the "go" button.
   #-------------------------------------------------------------------------------------------------
  
   my $connection_string = shift;
   my $database_name = shift;
   my $schema_name = shift;
   my $schema_password = shift;
   my $queue_name = shift;
   my $queue_table = shift;

   print "Inside clear the queue\n";
   print "This is in development\n";
   <>;

}


#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
#-- Actual Process Functions are placed here
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

sub batch_process_monitoring{

   #--Display the list of databases and get a value
   #--The user response is a database_id value or 'q'/.
   #---------------------------------------------------
   $heading = "Database List";
   $for_what_purpose = "(for running batch process monitoring)";
   $database_id = databases_for_choosing($heading, $for_what_purpose);
   if ($database_id eq 'q'){
      return "nifty_sql_menu";
   }
   else{
      ($database_name, $connection_string, $transitional) = split /!~!/, database_and_connection_string($database_id);
   }

   #--Display a DBO SCHEMA list for a given DB.
   #--The user response is a schema_id value or 'q'.
   #--------------------------------------------------
   $heading = "Schema List";
   $for_what_purpose = "(for running batch process monitoring in $database_name)";
   $schema_name = schema_for_choosing($heading, $for_what_purpose, $connection_string, $database_name, $transitional);
   if ($schema_name eq 'q'){
      return "nifty_sql_menu";
   } 

   #--See if we can get the password.  If not, prompt
   #--for it...
   #--------------------------------------------------

   $password = get_password_from_auth($schema_name);

   if ($password eq 'NOT FOUND'){
      $heading = "Password Entry Screen";
      $for_what_purpose = "(for running batch process monitoring for $schema_name in $database_name)";
      $password = password_for_schema($heading, $for_what_purpose);
      if ($password eq 'q'){
         return "nifty_sql_menu";
      } 
   }

   #--Get a number of iterations you want to run.
   #--The user response is a password value or 'q'.
   #--------------------------------------------------
   do{
      clear_screen();
      $~ = "display_screen_header";
      $heading = "Iteration Entry Screen";
      $for_what_purpose = "(How many 15 second iterations do you want to run?)";
      write;
      chomp($iterations = <>);
      if ($iterations eq 'q'){
         return "nifty_sql_menu";
      } 
   }while($iterations !~ /^\d+$/);

   $command = qq[SELECT BATCH_TYPE ||'!~!'||
                               ORG_ID ||'!~!'||
                               COUNT (*) ||'!~!'||
                               MIN (enq_time) ||'!~!'||
                               MAX (enq_time) 
                          FROM (  SELECT enq_time,
                                         (SELECT str_value
                                            FROM TABLE (a.user_data.header.properties)
                                           WHERE name = 'BatchType')
                                            AS BATCH_TYPE,
                                         (SELECT str_value
                                            FROM TABLE (a.user_data.header.properties)
                                           WHERE name = 'MessageId')
                                            AS MESSAGE_ID,
                                         a.user_data.text_vc AS "File_N",
                                         (SELECT str_value
                                            FROM TABLE (a.user_data.header.properties)
                                           WHERE name = 'OrgId')
                                            AS ORG_ID
                                    FROM t_tkqb_xen_batch_qt a
                                ORDER BY enq_time)
                      GROUP BY BATCH_TYPE, ORG_ID;];

   #---------------------  
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Batch Process Monitoring";
   $for_what_purpose = "($iterations iterations for $schema_name on $database_name)";
   write;

   $~ = "batch_display";
 
   print"      Iteration | Batch Type                | Org ID              | Count   | Oldest                     | Youngest\n";  
   print"      --------- | ------------------------- | ------------------- | ------- | -------------------------- | ---------------------\n";

   for ($i = 0; $i <= $iterations; $i++){

      $found_records = '0';

      foreach $line (split /\n/, execute_sql($schema_name, $password, $connection_string, $database_name, $command)){
    
         if ($line =~ /ORA/){
            print "This system might not have the necessary batch tables\n";
            goto BATCH_DISPLAY_END;
         }
         else{ 
            ($batch_type, $org_id, $oldest, $youngest) = split /!~!/, $line;
            write;
            $found_records = '1';
         }
      }

      if ($found_records eq '0'){
        goto BATCH_DISPLAY_END;
      } 
      system ("sleep 15");
   }
   BATCH_DISPLAY_END:
   print "Press enter to return to previous menu";
   <>;
   return "nifty_sql_menu";
}

sub active_running_transactions{

   #--Display the list of databases and get a value
   #--The user response is a database_id value or 'q'/.
   #---------------------------------------------------
   $heading = "Database List";
   $for_what_purpose = "(for viewing active running transactions)";
   $database_id = databases_for_choosing($heading, $for_what_purpose);
   if ($database_id eq 'q'){
      return "nifty_sql_menu";
   }
   else{
      ($database_name, $connection_string, $transitional) = split /!~!/, database_and_connection_string($database_id);
   }

   #--Display a DBO SCHEMA list for a given DB.
   #--The user response is a schema_id value or 'q'.
   #--------------------------------------------------
   $heading = "Schema List";
   $for_what_purpose = "(for viewing active running transactions in $database_name)";
   $schema_name = schema_for_choosing($heading, $for_what_purpose, $connection_string, $database_name, $transitional);
   if ($schema_name eq 'q'){
      return "nifty_sql_menu";
   } 

   #--See if we can get the password.  If not, prompt
   #--for it...
   #--------------------------------------------------

   $password = get_password_from_auth($schema_name);

   if ($password eq 'NOT FOUND'){
      $heading = "Password Entry Screen";
      $for_what_purpose = "(for viewing active running transactions for $schema_name in $database_name)";
      $password = password_for_schema($heading, $for_what_purpose);
      if ($password eq 'q'){
         return "nifty_sql_menu";
      } 
   }

   #--------------This is David Greene's code. Thanks David....-------------------------------------------
   my $command = qq[ select username    ||'!~!'|| 
                            osuser      ||'!~!'||
                            s.inst_id   ||'!~!'||
                            s.sid       ||'!~!'||
                            24*3600*(sysdate-to_date(start_time,'mm/dd/yy hh24:mi:ss')) ||'!~!'|| 
                            machine     ||'!~!'||
                            event       ||'!~!'|| 
                            module      ||'!~!'||
                            to_char(start_date,'dd-Mon-yyyy hh24:mi:ss') txn_start
                       from gv\$transaction t, 
                            gv\$session s
                      where t.ses_addr=s.saddr
                        and s.inst_id=t.inst_id
                      order by 24*3600*(sysdate-to_date(start_time,'mm/dd/yy hh24:mi:ss'));];

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Check Active Running Transactions";
   $for_what_purpose = "($schema_name in $database_name)";
   write; 
 

   $~ = "active_running_transactions";
   print"    Username         | Osuser      | SID   | Machine              | EVENT                          | Seconds    | Transaction Start\n";
   print"    ---------------- | ----------- | ----- | -------------------- | ------------------------------ | ---------- | ------------------------------------------\n";

   foreach $line (split /\n/, execute_sql($schema_name, $password, $connection_string, $database_name, $command)){

      ($username, $osuser, $sid, $machien, $event, $seconds, $txn_start) = split /!~!/, $line;
      #write;
   } 

   print "Press enter to return to previous menu";
   <>;
   return "nifty_sql_menu";
}

sub FRA_consumption_monitoring{

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "FRA Consumption Monitoring Across Estate";
   $for_what_purpose = "";
   write; 

   my $command = qq[ SELECT distinct d.database_name || '!~!' || c.scan_name || ':1521/' || decode(d.alternate_service_name, NULL,
                                                                                                   d.database_name, d.alternate_service_name)  ||'!~!'|| s.transitional 
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s on (s.cluster_id = c.cluster_id)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and d.is_a_container = 'N';];

   $~ = "FRA_space_usage";
   print "   DB_NAME       | FRA Location                       | HOST            | Sft Limit GB  | Sft Used GB   | Sft Rcl GB   | Sft Avail GB   | Sft Full Pct | ASM Tot GB   | ASM Free GB  | ASM Free %\n";  
   print "   ------------- | ---------------------------------- | --------------- | ------------- | ------------- | ------------ | -------------- | ------------ | ------------ | ------------ | ----------\n";


   foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($database_name, $connection_string, $transitional) = split /!~!/, $line;

      $command2 = qq[ SELECT r.name                                                                                      ||'!~!'||
                             SYS_CONTEXT ('USERENV', 'DB_NAME')                                                          ||'!~!'||
                             SYS_CONTEXT ('USERENV', 'SERVER_HOST')                                                      ||'!~!'||
                             ROUND (r.space_limit / 1024 / 1024 / 1024)                                                  ||'!~!'||
                             ROUND (r.space_used / 1024 / 1024 / 1024)                                                   ||'!~!'||
                             ROUND (r.space_reclaimable / 1024 / 1024 / 1024)                                            ||'!~!'||
                             ROUND ( (r.space_limit - space_used + space_reclaimable) / 1024 / 1024 / 1024)              ||'!~!'||
                             ROUND ( (r.space_used - r.space_reclaimable) / r.space_limit * 100, 1)                      ||'!~!'||
                             asm_tot_gb                                                                                  ||'!~!'||
                             asm_free_gb                                                                                 ||'!~!'||
                             asm_free_pct
                        FROM v\$recovery_file_dest r,
                             (SELECT a.name diskgroup,
                                     ROUND (SUM (b.total_mb) / 1024) asm_tot_gb,
                                     ROUND (SUM (b.free_mb) / 1024) asm_free_gb,
                                     ROUND (100 * SUM (b.free_mb) / SUM (b.total_mb)) asm_free_pct
                                FROM v\$asm_disk b, v\$asm_diskgroup a
                               WHERE a.group_number = b.group_number AND b.header_status in ('MEMBER')
                               GROUP BY a.name) a
                         WHERE a.diskgroup = REPLACE (r.name, '+');];


      if ($transitional eq 'SLC'){
         $fra_space = execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command2);
      }
      else{
         $fra_space = execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command2);
      }

      ($fra_location,  $dbname,        $host, 
       $soft_limit_gb, $soft_used_gb,  $soft_reclaim_gb, 
       $soft_avail_gb, $soft_full_pct, $asm_tot_gb, 
       $asm_free_gb,   $asm_free_pct)                      = split /!~!/, $fra_space;

       $dbname = $database_name;

      write;
   }
 
   print "Press enter to return to previous menu";
   <>;
   return "nifty_sql_menu";
}

sub check_A_numbers{

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Check \"A\" Numbers Across Estate";
   $for_what_purpose = "(connection validation only)";
   write; 


   print "Please put in your \"A\" Number, or 'q' to quit (note,...any account will do, not just \"A\" ones)\n";
   chomp($A_Number = <>);
   if ($A_Number eq 'q'){
      return "connection_utility_menu";
   }

   my $command = qq[ SELECT distinct d.database_name || '!~!' || c.scan_name || ':1521/' || decode(d.alternate_service_name, 
                                                                                                   NULL, 
                                                                                                   d.database_name,
                                                                                                   d.alternate_service_name) ||'!~!'|| s.transitional 
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s on (s.cluster_id = c.cluster_id)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and d.is_a_container = 'N';];
   
   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Check \"A\" Numbers Across Estate";
   $for_what_purpose = "(connection validation only -- $A_Number)";
   write; 
 

   $~ = "A_number_report";
   print"      Database Name                | Connection         Zone       Connection String\n";
   print"      ---------------------------- | ---------------- | -------- | ------------------------------------------------------------------------ \n";


   foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($database_name, $connection_string, $transitional) = split /!~!/, $line;

      $command = qq[select count(*) 
                      from dba_users 
                     where upper(username) = upper(\'$A_Number\');];
      $count = 0;

      if ($transitional eq 'SLC'){
         $count = execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command);
         chomp($count);
         if ($count = '1'){
            $command = qq[select account_status from dba_users where upper(username) = upper(\'$A_Number\');];
            $message = execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command);
         }
         $connection_string = 'sqlplus xdbaprod/`auth xdbaprod`@'.$connection_string;
      }
      else{
         $count = execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command);
         chomp($count);
         if ($count = '1'){
            $command = qq[select account_status from dba_users where upper(username) = upper(\'$A_Number\');];
            $message = execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command);
         }
         $connection_string = 'sqlplus xdbaprod/`auth xdbaprod_pss`@'.$connection_string;
      }
      if ($message eq ""){
         $message = 'NONE';
      }
      write;
   }
   print "Hit enter to return to the previous menu\n";
   <>;
   return "connection_utility_menu";
}

sub check_db_connections_on_database{

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "List of Connections to a DB";
   $for_what_purpose = "";
   write; 

   print "Please enter the first few characters to the DB you want or 'q' to quit:\n";
   chomp($db_name = <>);
   if ($db_name eq 'q'){
      return "customer_utility_menu";
   }

   my $command = qq[ SELECT distinct d.database_name || '!~!' || c.scan_name || ':1521/' || d.database_name ||'!~!'|| s.transitional 
                                                     ||'!~!'|| d.is_a_container
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s on (s.cluster_id = c.cluster_id)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and upper(d.database_name) like upper(\'%$db_name%\');];

   ($database_name, $connection_string, $transitional, $is_a_container) = split /!~!/, execute_sql($monitoringdba_usr, 
                                                                                                   $monitoringdba_pwd, 
                                                                                                   $monitoringdba_connection_string, 
                                                                                                   $monitoringdba_database, $command);

   chomp($is_a_container);

   if ($is_a_container eq 'Y'){
      $command = qq[select distinct p.name ||'!~!'|| 
                           s.username ||'!~!'||
                           s.osuser   ||'!~!'||
                           s.machine  ||'!~!'||
                           s.type     ||'!~!'||
                           s.terminal 
                      from gv\$session s join gv\$pdbs p on (s.con_id = p.con_id)
                     where s.schemaname != 'SYS'
                       and s.type != 'BACKGROUND'
                       and s.username not in  ('XTSDEVCPROD','GGADMIN','DBSNMP')
                      order by 1;];

   }
   else{
      $command = qq[select distinct 'Non PDB', ||'!~!'|| 
                              username ||'!~!'||
                              osuser   ||'!~!'||
                              machine  ||'!~!'||
                              type     ||'!~!'||
                              terminal 
                         from gv\$session
                        where schemaname != 'SYS'
                          and type != 'BACKGROUND'
                          and username not in  ('XTSDEVCPROD','GGADMIN','DBSNMP')
                        order by 1;];
   }


   #--write the header on the screen
   #--------------------------------
   clear_screen();    
   $~ = "display_screen_header";
   $heading = "List of Connections to a DB";
   $for_what_purpose = "(database $database_name)";
   write; 


   $~ = "db_connections_on_server";
   print "    Database Name   |PDB              |Username             |OS User              |Machine                        |Type         |Terminal\n";
   print "    ----------------|-----------------|---------------------|---------------------|-------------------------------|-------------|----------------\n";

   #--Now Process the write to screen:
   if ($transitional eq 'SLC' &&  $is_a_container eq 'N'){
      foreach $line (split /\n/, execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command)){
         ($pdb, $username, $osuser, $machine, $type, $terminal) = split /!~!/, $line1;   
         write;
      } 
   }
   elsif ($transitional eq 'SLC' && $is_a_container eq 'Y'){
      foreach $line1 (split /\n/, execute_sql($pdb_usr, $pdb_pwd, "$connection_string as sysdba", $database_name, $command)){
         ($pdb, $username, $osuser, $machine, $type, $terminal) = split /!~!/, $line1;   
         write;
      } 
   }
   elsif ($transitional eq 'PSS' && $is_a_container eq 'N'){
      foreach $line1 (split /\n/, execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command)){
         ($pdb, $username, $osuser, $machine, $type, $terminal) = split /!~!/, $line1;   
         write;
      } 
   }
   elsif ($transitional eq 'PSS' && $is_a_container eq 'Y'){
      foreach $line1 (split /\n/, execute_sql($pdb_usr, $pdb_pwd, "$connection_string as sysdba", $database_name, $command)){
         ($pdb, $username, $osuser, $machine, $type, $terminal) = split /!~!/, $line1;
         write;
      } 
   }

   print "Press enter to return to previous menu";
   <>;
   return "customer_utility_menu";

}

sub check_db_connections_on_server{

   #--This will connect to the machine and loop through
   #--all of the databases on the machine and list out
   #--the connections to that instance.
   #---------------------------------------------------

   my $server_name = display_servers('prompt_for_return');

   #--With the server name, the only thing needed at this point
   #--is to loop through the DB connections and find out what 
   #--connections there are.
   #-----------------------------------------------------------
 
   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "List of Connections to a DB";
   $for_what_purpose = "(All database on server $server_name)";
   write; 


   #--Now the stuff specific for this routine
   #------------------------------------------
   $~ = "db_connections_on_server";
   print "    Database Name   |PDB              |Username             |OS User              |Machine                        |Type         |Terminal\n";
   print "    ----------------|-----------------|---------------------|---------------------|-------------------------------|-------------|----------------\n";


   #--Now loop through things...
   #--This is for the NON-PDB instances first.
   #------------------------------------------
   $command = qq[SELECT DISTINCT d.database_name ||'!~!'||c.scan_name || ':1521/' || d.database_name ||'!~!'|| s.transitional
                   FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                    JOIN servers s ON (c.CLUSTER_ID = s.CLUSTER_ID)
                  WHERE     LOWER (s.server_name) = lower(\'$server_name\')
                    AND d.is_accessible = 'Y'
                    AND d.is_a_dr = 'N'
                    AND d.is_a_container = 'N';];

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
      ($database_name, $connection_string, $transitional) = split /!~!/, $line;

      $command = qq[select distinct username ||'!~!'||
                           osuser   ||'!~!'||
                           machine  ||'!~!'||
                           type     ||'!~!'||
                           terminal
                      from gv\$session
                     where schemaname != 'SYS'
                       and type != 'BACKGROUND'
                       and username not in  ('XTSDEVCPROD','GGADMIN','DBSNMP');];


      if ($transitional eq 'SLC'){
         $password = $slc;
      }
      else{
         $password = $pss;
      }

      foreach $line2 (split /\n/, execute_sql('xdbaprod', $password, $connection_string, $database_name, $command)){
         
         ($username, $osuser, $machine, $type, $terminal) = split /!~!/, $line2;   
         $pdb = "Non-PDB";
         write;
      }
   }

   #--Now loop through things...
   #--This is for the PDB instances last
   #------------------------------------------
   $command = qq[SELECT DISTINCT d.database_name ||'!~!'||c.scan_name || ':1521/' || d.database_name
                   FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                    JOIN servers s ON (c.CLUSTER_ID = s.CLUSTER_ID)
                  WHERE     LOWER (s.server_name) = lower(\'$server_name\')
                    AND d.is_accessible = 'Y'
                    AND d.is_a_dr = 'N'
                    AND d.is_a_container = 'Y';];

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
      ($database_name, $connection_string) = split /!~!/, $line;

      $command = qq[select distinct p.name ||'!~!'||
                           s.username ||'!~!'||
                           s.osuser   ||'!~!'||
                           s.machine  ||'!~!'||
                           s.type     ||'!~!'||
                           s.terminal 
                      from gv\$session s join gv\$pdbs p on (s.con_id = p.con_id)
                     where s.schemaname != 'SYS'
                       and s.type != 'BACKGROUND'
                       and s.username not in  ('XTSDEVCPROD','GGADMIN','DBSNMP')
                     order by 1;];

      foreach $line2 (split /\n/, execute_sql($pdb_usr, $pdb_pwd, "$connection_string as sysdba", "$database_name", $command)){
         
         ($pdb, $username, $osuser, $machine, $type, $terminal) = split /!~!/, $line2;   
         write;
      }
   }
   print "Press enter to return to previous menu";
   <>;
   return "customer_utility_menu";

}

sub check_dbo_account{

   #--Display the list of databases and get a value
   #--The user response is a database_id value or 'q'/.
   #---------------------------------------------------
   $heading = "Database List";
   $for_what_purpose = "(for checking DBO Schema connections)";
   $database_id = databases_for_choosing($heading, $for_what_purpose);
   if ($database_id eq 'q'){
      return "customer_utility_menu";
   }
   else{
      ($database_name, $connection_string, $transitional) = split /!~!/, database_and_connection_string($database_id);
   }

   #--Display a list of DBO accounts and get a value 
   #--The user response is a database_id value or 'q'.
   #--------------------------------------------------
   $heading = "Schema List";
   $for_what_purpose = "(for checking DBO Schema connections in $database_name)";
   $schema_name = schema_for_choosing($heading, $for_what_purpose, $connection_string, $database_name, $transitional);
   if ($schema_name eq 'q'){
      return "connection_utility_menu";
   } 

   #--Display a list of DBO accounts and get a value 
   #--The user response is a password value or 'q'.
   #--------------------------------------------------
   $heading = "Password Entry Screen";
   $for_what_purpose = "(for checking DBO Schema connections for $schema_name in $database_name)";
   $password = password_for_schema($heading, $for_what_purpose);
   if ($password eq 'q'){
      return "connection_utility_menu";
   } 

   $command = qq[select \'made a connection\' from dual;];
   if ( execute_sql($schema_name, $password, $connection_string, $database_name, $command) =~ /made a connection/){
      print "We were able to make a connection\n";
      print "Database Name:             $database_name\n";
      print "Schema Name:               $schema_name\n";
      print "Password:                  <not displayed>\n";
      print "Connection String:         $connection_string\n";
   }
   else{
      print "Problem with the connection. Please look into this\n";
      print "Database Name:             $database_name\n";
      print "Schema Name:               $schema_name\n";
      print "Password:                  <not displayed>\n";
      print "Connection String:         $connection_string\n";
   }
   print "\nHit enter to return to the previous menu.\n";
   <>;
   return "connection_utility_menu";

}

sub display_servers{

   my $prompt_for_return = shift;

   my $command = qq[select server_name ||'!~!'|| 
                        server_support_level ||'!~!'||
                        current_patch_set ||'!~!'|| 
                        transitional
                   from servers
                 order by server_name;];
   while (TRUE){ 
      %valid_responses = {};
      clear_screen();

      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "List of Servers";
      $for_what_purpose = "";
      write; 


      #--Now the stuff specific for this routine
      #------------------------------------------
      $~ = "display_servers";
      print"                              Server Name        Support Lvl   Current Patch Set                                     Zone\n";
      print"                              ------------------ ------------- ---------------------------------------------         ----\n";

      foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
         ($server_name, $server_support_level, $current_patch_set, $transitional) = split /!~!/, $line;
         $valid_responses{$server_name} = 'TRUE';          
         write;
      }
   
      if ($prompt_for_return eq 'prompt_for_return'){
         print "Please choose a server_name off the list:\n";
         chomp($user_response = <>);
         if ($valid_responses{$user_response} eq 'TRUE'){
            return "$user_response";
         }
      }
     else{
        print "Return to previous menu\n";
        <>;
        return "display_scripts_menu";
     }
   }
}

sub display_connect_strings{

   clear_screen();

   my $command = qq[SELECT distinct s.transitional   ||'!~!'||
                                 d.database_name     ||'!~!'||
                                 DECODE (c.scan_name, 'No Scan', d.database_name,
                                         c.scan_name || ':1521/' || d.database_name)
                   FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                    JOIN servers s ON (c.CLUSTER_ID = s.CLUSTER_ID)
                          order by 1;];

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "General Connect Strings";
   $for_what_purpose = "";
   write; 

   #--Now the stuff specific to this item
   #-------------------------------------
   $~="display_connect_strings";
   print " Database Name       Connection String                          Zone | Database Name       Connection String                          Zone\n";
   print " ------------------- ----------------------------------------   ----   ------------------- -----------------------------------------  ----\n";


   #--used if we have an uneven number
   $toggle = '1';
      

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
      if ($toggle eq '1'){
         ($transitional1, $database_name1, $connection_string1) = split /!~!/, $line;
         $toggle = '2';
      }
      elsif ($toggle eq '2'){
         ($transitional2, $database_name2, $connection_string2) = split /!~!/, $line;
         $toggle = '1';
         write;
      }
   }

   #final write   
   if ($toggle eq '2'){
      $transitional2 = ".";
      $database_name2 = ".";
      $connection_string2 = ".";
      write;
   }



   print "Return to previous menu\n";
   <>;
   return "display_scripts_menu";
}

sub show_asm_space_usage{



   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "ASM Space Usage";
   $for_what_purpose = "";
   write; 
  
   print "Please enter a minimum threshold (ie,..80) or 'q' to quit: \n";
   chomp($threshold_choice = <>);
   if ($threshold_choice eq 'q'){
     return "customer_utility_menu";
   }

   $command = qq[select c.cluster_id ||'!~!'||
                        s.server_name ||'!~!'||
                        a.name  ||'!~!'||
                        max(a.percent_used)
                   from clusters c join asm a on (a.cluster_id = c.cluster_id)
                                   join servers s on (a.cluster_id = s.cluster_id)
                  group by c.cluster_id, a.name, s.server_name
                 having max(a.percent_used) > $threshold_choice
                  order by 1 asc;];  

   
   
   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "ASM Space Usage";
   $for_what_purpose = "(pulling list at > $threshold_choice threshold from ASM history)";
   write; 

   print"      Cluster_ID Server Name         ASM Name                        Percent Used\n";
   print"      ---------- ------------------- ------------------------------- ------------\n"; 

   $~ = "asm_display";

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($cluster_id, $server_name, $name, $percent) = split /!~!/, $line;
      write;
   }

   print "Return to previous menu\n";
   <>;
   return "customer_utility_menu";
}

sub tablespace_usage_by_database{

   my $user_input = "";
   clear_screen();


   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Tablespace Usage by Database";
   $for_what_purpose = "";
   write; 

   print "Please enter a display threshold (ie,..80) or 'q' to quit: \n";
   chomp($threshold_choice = <>);
   if ($threshold_choice eq 'q'){
     return "customer_utility_menu";
   }

   print "Please enter a few characters for the database you want  or 'q' to quit: \n";
   chomp($db_choice = <>);
   if ($db_choice eq 'q'){
     return "customer_utility_menu";
   }

   my $command = qq[ SELECT distinct d.database_name || '!~!' || c.scan_name || ':1521/' || d.database_name ||'!~!'|| s.transitional
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s on (s.cluster_id = c.cluster_id)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and d.is_a_container = 'N'
                        and upper(d.database_name) like upper(\'%$db_choice%\');];

   my $command2= qq[ SELECT tablespace_name ||'!~!'|| files ||'!~!'||
                            bigfile ||'!~!'|| autoextensible ||'!~!'||
                            actual_mb ||'!~!'|| used_mb ||'!~!'||
                            max_mb ||'!~!'|| current_max_used ||'!~!'|| total_max_used
                       FROM (select substr(TS.tablespace_name,1,20) Tablespace_Name,
                                    TS.files,
                                    FS.bigfile,
                                    TS.autoextensible,
                                    round(TS.bytes/1048576,2) Actual_MB,
                                    round((TS.bytes-FS.bytes)/1048576,2) Used_MB,
                                    round(TS.maxbytes/1048576,2) Max_MB,
                                    round(100/(TS.bytes/(TS.bytes-FS.bytes)),2) Current_Max_Used,
                                    round(100 * (TS.bytes-FS.bytes)/TS.maxbytes,2) Total_Max_used
                               from (select tablespace_name,
                                            autoextensible,
                                            sum(bytes) bytes,
                                            sum(decode(maxbytes,0,bytes,maxbytes)) maxbytes,
                                            count(*) files
                                       from dba_data_files
                                      group by tablespace_name, autoextensible) TS,
                                    (select DT.tablespace_name,
                                            DT.bigfile,
                                            nvl(sum(DFS.bytes),0) bytes
                                       from dba_free_space DFS, dba_tablespaces DT
                                      where DFS.tablespace_name(+) = DT.tablespace_name
                                        and DT.contents not in ('UNDO','TEMPORARY')
                                      group by DT.tablespace_name, DT.bigfile) FS
                              where FS.tablespace_name = TS.tablespace_name
                              order by 6 desc)
                      WHERE Current_Max_Used > $threshold_choice;];

   ($database_name, $connection_string, $transitional) = split /!~!/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command);

   chomp($database_name);
   chomp($connection_string);
   chomp($transitional); 

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Tablespace Usage by Database";
   $for_what_purpose = "(pulling list at > $threshold_choice threshold of $database_name [no DR or PDBs in this])";
   write; 


   $~ = "tablespace_usage_by_threshold";

   print"      Database Name | Tablespace Name                | Files  | BigFile| Autoextensible  | Actual MB      | Used MB         | Max MB          | Current % Used  | Total Max % Used\n";
   print"      ------------- | ------------------------------ | ------ | -------| --------------- | -------------- | --------------- | --------------- | --------------- | ----------------\n"; 


   if ($transitional eq 'SLC'){

      foreach $line2  (split /\n/, execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command2)){

         ($tablespace_name, $files, $bigfile, $autoextensible, $actual_mb, $used_mb, $max_mb, $current_max_used, $total_max_used) = split /!~!/, $line2;
         write;

      } 

   }
   elsif ($transitional eq 'PSS'){

      foreach $line2  (split /\n/, execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command2)){

         ($tablespace_name, $files, $bigfile, $autoextensible, $actual_mb, $used_mb, $max_mb, $current_max_used, $total_max_used) = split /!~!/, $line2;
         write;

      }
   }

   print "Return to previous menu\n";
   <>;
   return "customer_utility_menu";

}

sub tablespace_usage_by_server{

   my $user_input = "";
   clear_screen();


   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Tablespace Usage by Database by Server";
   $for_what_purpose = "";
   write; 

   print "Please enter a display threshold (ie,..80) or 'q' to quit: \n";
   chomp($user_choice = <>);
   if ($user_choice eq 'q'){
     return "customer_utility_menu";
   }

   print "Please enter a server name or 'q' to quit: \n";
   chomp($server_name = <>);
   if ($server_name eq 'q'){
     return "customer_utility_menu";
   }
   

   my $command = qq[ SELECT d.database_name || '!~!' || c.scan_name || ':1521/' || d.database_name ||'!~!'|| s.transitional
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s ON (s.CLUSTER_ID = c.CLUSTER_ID)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and d.is_a_container = 'N'
                        and upper(s.server_name) = upper(\'$server_name\');];

   my $command2= qq[ SELECT tablespace_name ||'!~!'|| files ||'!~!'||
                            bigfile ||'!~!'|| autoextensible ||'!~!'||
                            actual_mb ||'!~!'|| used_mb ||'!~!'||
                            max_mb ||'!~!'|| current_max_used ||'!~!'|| total_max_used
                       FROM (select substr(TS.tablespace_name,1,20) Tablespace_Name,
                                    TS.files,
                                    FS.bigfile,
                                    TS.autoextensible,
                                    round(TS.bytes/1048576,2) Actual_MB,
                                    round((TS.bytes-FS.bytes)/1048576,2) Used_MB,
                                    round(TS.maxbytes/1048576,2) Max_MB,
                                    round(100/(TS.bytes/(TS.bytes-FS.bytes)),2) Current_Max_Used,
                                    round(100 * (TS.bytes-FS.bytes)/TS.maxbytes,2) Total_Max_used
                               from (select tablespace_name,
                                            autoextensible,
                                            sum(bytes) bytes,
                                            sum(decode(maxbytes,0,bytes,maxbytes)) maxbytes,
                                            count(*) files
                                       from dba_data_files
                                      group by tablespace_name, autoextensible) TS,
                                    (select DT.tablespace_name,
                                            DT.bigfile,
                                            nvl(sum(DFS.bytes),0) bytes
                                       from dba_free_space DFS, dba_tablespaces DT
                                      where DFS.tablespace_name(+) = DT.tablespace_name
                                        and DT.contents not in ('UNDO','TEMPORARY')
                                      group by DT.tablespace_name, DT.bigfile) FS
                              where FS.tablespace_name = TS.tablespace_name
                              order by 6 desc)
                      WHERE Current_Max_Used > $user_choice;];

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Tablespace Usage by Database";
   $for_what_purpose = "(pulling list at > $user_choice threshold of DB on $server_name [no DR or PDBs in this])";
   write; 


   $~ = "tablespace_usage_by_threshold";

   print"      Database Name | Tablespace Name                | Files  | BigFile| Autoextensible  | Actual MB      | Used MB         | Max MB          | Current % Used  | Total Max % Used\n";
   print"      ------------- | ------------------------------ | ------ | -------| --------------- | -------------- | --------------- | --------------- | --------------- | ----------------\n"; 


   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($database_name, $connection_string, $transitional) = split /!~!/, $line;

      if ($transitional eq 'SLC'){

         foreach $line2  (split /\n/, execute_sql('xdbaprod', $slc, $connection_string, $database_name, $command2)){

            ($tablespace_name, $files, $bigfile, $autoextensible, $actual_mb, $used_mb, $max_mb, $current_max_used, $total_max_used) = split /!~!/, $line2;
            write;

         } 

      }
      elsif ($transitional eq 'PSS'){

         foreach $line2  (split /\n/, execute_sql('xdbaprod', $pss, $connection_string, $database_name, $command2)){

            ($tablespace_name, $files, $bigfile, $autoextensible, $actual_mb, $used_mb, $max_mb, $current_max_used, $total_max_used) = split /!~!/, $line2;
            write;

         }
      }
   }

   print "Return to previous menu\n";
   <>;
   return "customer_utility_menu";

}

sub display_individual_db_info{

   my $user_input = "";
   clear_screen();

   while ($user_input ne 'q'){


      #--write the header on the screen
      #--------------------------------
      $~ = "display_screen_header";
      $heading = "Individual DB Info Screen";
      $for_what_purpose = "";
      write; 

      print "Please enter a few characters for the DB in question: q to quit\n\n\n";
      chomp($user_input = <>);


      my $command = qq[ SELECT    d.database_id || '!~!' || d.database_name || '!~!' || d.is_a_dr || '!~!' || 
                                  d.is_a_container || '!~!' || d.is_accessible || '!~!' || c.scan_name || ':1521/' || 
                                  d.database_name || '!~!' || s.server_name || '!~!' || i.instance_name  ||'!~!'||
                                  decode(c.internal_or_external, 'I', 'Internal', 'E', 'External')
                          FROM    databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                              JOIN servers s ON (d.CLUSTER_ID = s.CLUSTER_ID)
                                              JOIN instances i ON (i.server_id = s.server_id AND d.database_id = i.database_id)
                         WHERE   upper(d.database_name) like upper('%$user_input%');];

     if ($user_input eq 'q'){

        return "display_scripts_menu";

     }
     else{
  
        my $first_pass = 1;
 
        foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
 
           ($database_id, $database_name, $is_a_dr, $is_a_container, 
            $is_accessible, $connect_string, $server_name, $instance_name, $internal_external) = split /!~!/, $line;

           if ($first_pass eq '1'){
              $~ = "individual_db_info_heading";
              write;               
              $first_pass++;
           }
           else{
              $~ = "individual_db_info_details";
              write; 
           }
        } 

        my $command = qq[select e.environment_name
                           from databases d join databases_to_environments j on (d.database_id = j.database_id)
                                            join environments e on (j.environment_id = e.environment_id)
                          where d.database_id = $database_id;];

       print "      --------------------------------------------------------------------------------------------------------------------------------------------------------\n";

        foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

           $customer = $line;
           $~ = "db_customers";
           write;

        }
     }

   print "\n\n\n\nReturn to previous menu\n";
   <>;
   return "display_scripts_menu";
   }
}  

sub post_dr_or_upgrade_monitoring{

   clear_screen();

   #--Display the list of databases and get a value
   #--The user response is a database_id value or 'q'/.
   #---------------------------------------------------
   $heading = "Database List";
   $for_what_purpose = "(for post DR or Upgrade monitoring)";
   $database_id = databases_for_choosing($heading, $for_what_purpose);
   if ($database_id eq 'q'){
      return "post_dr_or_upgrade_menu";
   }
   else{
      ($database_name, $connection_string, $transitional) = split /!~!/, database_and_connection_string($database_id);
   }

   #--Display a DBO SCHEMA list for a given DB.
   #--The user response is a schema_id value or 'q'.
   #--------------------------------------------------
   $heading = "Schema List";
   $for_what_purpose = "(for post DR or Upgrade monitoring in $database_name)";
   $schema_name = schema_for_choosing($heading, $for_what_purpose, $connection_string, $database_name, $transitional);
   if ($schema_name eq 'q'){
      return "post_dr_or_upgrade_menu";
   } 

   #--See if we can get the password.  If not, prompt
   #--for it...
   #--------------------------------------------------

   $password = get_password_from_auth($schema_name);

   if ($password eq 'NOT FOUND'){
      $heading = "Password Entry Screen";
      $for_what_purpose = "(for post DR or Upgrade monitoring for $schema_name in $database_name)";
      $password = password_for_schema($heading, $for_what_purpose);
      if ($password eq 'q'){
         return "post_dr_or_upgrade_menu";
      } 
   }

   #--Get a number of iterations you want to run.
   #--The user response is a password value or 'q'.
   #--------------------------------------------------
   do{
      clear_screen();
      $~ = "display_screen_header";
      $heading = "Iteration Entry Screen";
      $for_what_purpose = "(How many 2 min iterations do you want to run? ['q' to quit])";
      write;
      chomp($iterations = <>);
      if ($iterations eq 'q'){
         return "post_dr_or_upgrade_menu";
      } 
   }while($iterations !~ /^\d+$/);

   
   $iteration_counter = 1;

   #--These are the queries we are gunna run to check things and report.
   #--------------------------------------------------------------------
   my $connections_since_midnight = qq[select count(*) from 
                                      (SELECT UNIQUE(XS.OPER_ID), XS.ORG_ID, XS.LOGIN_D
                                         FROM T_XUSA_SESSION_AUDIT XS, T_TKOP_OPER_PROFILE OP
                                        WHERE XS.LOGIN_D > trunc(sysdate) 
                                          AND XS.OPER_ID = OP.OPER_ID 
                                          AND OP.OPER_TYPE = 1);];

   my $workitems_since_midnight = qq[SELECT COUNT (*)
                                       FROM T_TKWI_WORK_ITEM
                                      WHERE WORK_ITEM_ENTR_D > trunc(sysdate);];


   clear_screen();
   $~ = "display_screen_header";
   $heading = "Post DR or Upgrade Monitoring Screen";
   $for_what_purpose = "($schema_name on $database_name for $iterations iterations)";
   write;


   $~ = "post_dr_screen_display";
   print "                                         Connections Since Midnight | WorkItems Created Since Midnight\n";
   print "                                         -------------------------- | ---------------------------------\n";

   while ($iteration_counter <= $iterations){
 
      $connection_count = execute_sql($schema_name, $password, $connection_string, $database_name, $connections_since_midnight);
      chomp($connection_count);
      $workitem_count = execute_sql($schema_name, $password, $connection_string, $database_name, $workitems_since_midnight);
      chomp($workitem_count);

      write;

      $iteration_counter++;
      sleep(120);
   }

   print "\n\n\n\nReturn to previous menu\n";
   <>;
   return "post_dr_or_upgrade_menu";
}

sub display_customers_by_server{

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Display Customers by Server";
   $for_what_purpose = "Please enter a Server Name below ('q' to quit)";
   write; 

   chomp($user_choice = <>);

   if ($user_choice eq 'q'){
      return "display_scripts_menu";
   }
   
   my $command = qq[SELECT distinct s.server_name ||'!~!'||
                           d.database_name ||'!~!'||
                           d.is_a_dr ||'!~!'||
                           d.is_a_container ||'!~!'||
                           d.is_accessible ||'!~!'||
                           e.environment_name
                      FROM servers s JOIN databases d ON (s.CLUSTER_ID = d.CLUSTER_ID) 
                                JOIN databases_to_environments j on (d.database_id = j.database_id)
                                JOIN environments e ON (j.environment_id = e.environment_id)
                     WHERE upper(s.server_name) = upper(\'$user_choice\');]; 

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Display Customers by Server";
   $for_what_purpose = "";
   write; 

   $~ = "display_customers_by_server";

   print "      Server Name    Database Name DR      Cont    Accessible Environment name\n";
   print "      -------------  ------------- ------- ------- ---------  ----------------------------------------------------------\n";


   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
 
      ($server_name, $database_name, $is_a_dr, $is_a_container, $is_accessible, $environment_name) = split /!~!/, $line;

      write;
   }


   print "Return to previous menu\n";
   <>;
   return "display_scripts_menu";
}

sub display_customer_connections{

   clear_screen();

   my $command = qq[SELECT string
                     FROM (  SELECT DISTINCT
                                    d.database_name
                                    || '!~!'
                                    || e.environment_name
                                    || '!~!'
                                    || c.scan_name || ':1521/' || d.database_name STRING,
                                    e.environment_name
                               FROM databases d JOIN databases_to_environments j on (j.database_id = d.database_id)
                                                JOIN environments e ON (j.environment_id = e.environment_id)
                                                JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                           ORDER BY e.environment_name asc);];

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Customer Associaton Connections";
   $for_what_purpose = "";
   write; 

   #--Now the stuff specific to this item
   #-------------------------------------
   $~ = "display_customer_connections";


   print " Environment name                                    | Database Name                  | Connect String\n";
   print " --------------------------------------------------- | ------------------------------ | --------------------------------------------------\n";


   foreach $line  (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($database_name, $env_name, $connect_string) = split /!~!/, $line;
      write;
   }

   print "Return to previous menu\n";
   <>;
   return "display_scripts_menu";
}

sub display_queue_items{

   #\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
   #--This routine builds a data structure like this:
   #--   $database_name --> $schema_name --> $queue_name
   #\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

   #--First, we need to get information about which Database we will be dealing with
   #---------------------------------------------------------------------------------

   my $database_id = databases_for_choosing("Choose a Database from Menu", "(for Displaying Queue Items in a Given Schema)");

   #--Early termination of menu if wanted
   #-------------------------------------
   if ($database_id eq 'q'){
      return "display_queue_menu";
   }

   ($database_name, $connection_string, $transitional) = split /!~!/, database_and_connection_string($database_id); 
    chomp($transitional);


   #--Next, we need to get information for the schema in that database we are dealing with
   #--------------------------------------------------------------------------------------

   my $schema_name = schema_for_choosing("Choose a Schema from the Menu", "(for Displaying Queue Items in a Given Schema for $database_name)", $connection_string,  $database_name, $transitional);

   #--Early termination of menu if wanted
   #-------------------------------------
   if ($schema_name eq 'q'){
      return "display_queue_menu";
   }

   #--Now, we need to get the password for the schema in the database we have identified:
   #-------------------------------------------------------------------------------------

   my $schema_password = password_for_schema("Password Entry Screen", "(for performing function on $database_name --> $schema_name queues)");

   #--Early termination of menu if wanted
   #-------------------------------------
   if ($schema_password eq 'q'){
      return "display_queue_menu";
   }

   #--Last, we need to find which queue they want to work with
   #----------------------------------------------------------
   
   my ($queue_name, $queue_table)  = split /,/, get_the_queue("Queue Selection Screen", 
                                                              "(for performing operations on queues in $database_name --> $schema_name)",
                                                              $database_name,
                                                              $connection_string,
                                                              $schema_name,
                                                              $schema_password);

   #\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
   #--We got ourselves the following information:
   #--
   #--  $database_id
   #--  $database_name
   #--  $connection_string
   #--  $schema_name
   #--  $schema_password
   #--  $queue_name
   #--
   #--  Now, we are going to display the items in the queue and perhaps do some work on them
   #--  if the user wants...
   #\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

   #--to debug:
   #print "$database_id\n";
   #print "$database_name\n";
   #print "$connection_string\n";
   #print "$schema_name\n";
   #print "$schema_password\n";
   #print "$queue_name\n";


   #--Now, if the value for "$queue_name" is a queue from above, lets do additional processing.  
   #--     else, lets just return to the previous menu.
   #------------------------------------------------------------------------------------------

   if ($queue_name eq 'q'){
      return "display_queue_menu";
   }
   else{
      $clear_the_queue_option = display_individual_queue_info("Individual Queue Screen",
                                                              "(for possible clearing of queue $queue_name for schema $schema_name in $database_name)",
                                                              $connection_string,
                                                              $database_name,
                                                              $schema_name,
                                                              $schema_password,
                                                              $queue_name,
                                                              $queue_table);

      if ($clear_the_queue_option eq 'clear the queue'){
          clear_the_queue($connection_string,
                          $database_name,
                          $schema_name,
                          $schema_password,
                          $queue_name,
                          $queue_table);
         return "display_queue_menu";         
      }
                                                               
      return "display_queue_menu";
   }

}
sub display_database_services_cluster{
   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Database Services by Cluster";
   $for_what_purpose = "(Input a server name please [it will pull the cluster its on]... 'q' to quit)";
   write;

   chomp($server_name = <>);

   #--early termination of menu if wanted
   #-------------------------------------
   if ($server_name eq 'q'){
      return "display_scripts_menu";
   }

   #--cluster_data[0] = cluster_id
   #--cluster_data[1] = cluster_name
   #--cluster_data[2] = internal_or_external
   #----------------------------------------
   @cluster_data = get_cluster_data($server_name);

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Services For Database on Server Cluster";
   $for_what_purpose = "(Services on $server_name - Cluster [ be patient -- a lot of data is coming ] )";
   write;
   $~ = "center_entry";
   $center_entry = "The \"(a)\" means it is an \"available\" service";
   write;
   $center_entry = "The \"(r)\" means it is a \"running\" service";
   write;
   $center_entry = "The \"(p)\" means it is an \"preferred\" service";
   write;
   print "\n";
  


   my $command = qq[select distinct s.server_name
                      from servers s join clusters c on (s.cluster_id = c.cluster_id)
                                     join databases d on (d.cluster_id = c.cluster_id)
                     where c.cluster_id = $cluster_data[0]
                       and d.is_accessible = 'Y'
                       and d.is_a_dr = 'N'
                       and d.is_a_container = 'N'
                     order by s.server_name asc;];

   $index = 1;
   $server1 = $server2 = $server3 = $server4 = "Not Used";

   %server_name_position = ();

   foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
     if ($index eq 1){
        chomp($server1 = $line); 
        $server_name_position{$server1} = 1;
     }
     elsif ($index eq 2){
        chomp($server2 = $line); 
        $server_name_position{$server2} = 2;
     }
     elsif ($index eq 3){
        chomp($server3 = $line); 
        $server_name_position{$server3} = 3;
     }
     elsif ($index eq 4){
        chomp($server4 = $line); 
        $server_name_position{$server4} = 4;
     }
     $index++;
   }

   #--Now the stuff specific to this item
   #-------------------------------------
   $~ = "display_services_cluster_header";
   write;
   print "    ------------------ | ------------------------- | ---------------- | ----------------- | ---------------- | ----------------\n";

   #--prepare for normal write below
   #--------------------------------
   $~ = "display_services_cluster";

   my $command = qq[select d.database_name ||'!~!'|| min(s.server_name)
                      from servers s join databases d on (d.cluster_id = s.cluster_id)
                                     join clusters c on (c.cluster_id = d.cluster_id)
                                     join instances i on (i.database_id = d.database_id AND
                                                          i.server_id = s.server_id)
                     where c.cluster_id = $cluster_data[0]
                       and d.is_accessible = 'Y'
                       and d.is_a_dr = 'N'
                       and d.is_a_container = 'N'
                      group by d.database_name;];

   foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){
   
      ($database_name, $server_name) = split /!~!/, $line;

      #--going to pull the data right from the server itself....
      #--RUNNING INSTANCES 
      #---------------------------------------------------------
      open (FILE, ">$command_file_ksh");
      print FILE qq[. oraenv << EOF
$database_name
EOF
srvctl status service -d $database_name
];
      close FILE;
      system ("chmod 755 $command_file_ksh");

      @output = `ssh -q oracle\@$server_name \"ksh -s\" < $command_file_ksh`;

      #--house clean
      #-------------
      if (-e $command_file_ksh){
         system("rm $command_file_ksh");
      }


      SERVICE_LOOP:  foreach $service_line (@output){
         $service_line =~ /Service (\S+) is running on instance\(s\) (\S+)/;


         $service_name = $1;
         ($service_instance1, $service_instance2, $service_instance3, $service_instance4) = split /,/, $2; 

         if ($service_name eq ''){
            next SERVICE_LOOP;
         }
     

         #--Now we pull from the server itself....
         #--AVAILABLE INSTANCES
         #----------------------------------------
         open (FILE, ">$command_file_ksh");
         print FILE qq[. oraenv << EOF
$database_name
EOF
srvctl config service -s $service_name -d $database_name
];
         close FILE;
         system ("chmod 755 $command_file_ksh");

         @output2= `ssh -q oracle\@$server_name \"ksh -s\" < $command_file_ksh`;

         #--house clean
         #-------------
         if (-e $command_file_ksh){
            system("rm $command_file_ksh");
         }

         foreach $service_line(@output2){

            if ($service_line =~ /Available instances: (\S+)\n/){

               ($available_instance1, $available_instance2, $available_instance3, $available_instance4) = split /,/, $1;
            }
            
            if ($service_line =~ /Preferred instances: (\S+)\n/){

               ($preferred_instance1, $preferred_instance2, $preferred_instance3, $preferred_instance4) = split /,/, $1;
            }
         }



         #--At this point, I have the following information:
         #--- $database_name
         #--- $server1, $server2, $server3, $server4 (that is on the cluster)....
         #--- $service_name (associated with the database)
         #--- $service_instance1, $service_instance2, $service_instance3, $service_instance4 (these are where the services are running).
         #---
         #--- Need to link the service_nstance now with what server it is running on, so it can display it correctly....
         #-----------------------------------------------------------------------------------------------------------------

         my $command = qq[select s.server_name ||'!~!'|| i.instance_name
                            from servers s join instances i on (s.server_id = i.server_id)
                                           join clusters c on (s.cluster_id = c.cluster_id)
                                           join databases d on (d.cluster_id = c.cluster_id AND
                                                                d.database_id = i.database_id)
                           where d.database_name = '$database_name'
                           order by s.server_name asc ;];

         $instance1 = $instance2 = $instance3 = $instance4 = "";


         foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

            ($test_server, $test_instance) = split /!~!/, $line;


           
            ($instance1, $instance2, $instance3, $instance4) = 
            set_instance_variable_for_services_write($instance1, 
                                                     $instance2, 
                                                     $instance3, 
                                                     $instance4, 
                                                     \%server_name_position, 
                                                     $test_server, 
                                                     $test_instance,
                                                     $service_instance1,
                                                     $service_instance2,
                                                     $service_instance3,
                                                     $service_instance4);

           
            ($instance1, $instance2, $instance3, $instance4) = 
            set_available_variable_for_services_write($instance1, 
                                                     $instance2, 
                                                     $instance3, 
                                                     $instance4, 
                                                     \%server_name_position, 
                                                     $test_server, 
                                                     $test_instance,
                                                     $available_instance1,
                                                     $available_instance2,
                                                     $available_instance3,
                                                     $available_instance4,
                                                     $preferred_instance1,
                                                     $preferred_instance2,
                                                     $preferred_instance3,
                                                     $preferred_instance4);
         }
         write;
      }
      print "    ------------------ | ------------------------- | ---------------- | ----------------- | ---------------- | ----------------\n";
   }


   print "\nHit enter to return to the prvious menu\n";
   <>;
   return "display_scripts_menu";
}


sub display_database_services_server{

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Database Services by Server";
   $for_what_purpose = "(input a server name please... 'q' to quit)";
   write; 

   chomp($server_name = <>);

   #--early termination of menu if wanted
   #-------------------------------------
   if ($server_name eq 'q'){
      return "display_scripts_menu";
   }

   my $command = qq[select d.database_name ||'!~!'|| min(s.server_name)
                      from servers s join databases d on (d.cluster_id = s.cluster_id)
                     where upper(s.server_name) = upper(\'$server_name\')
                      group by d.database_name;];

   #--write the header on the screen
   #--------------------------------
   clear_screen();
   $~ = "display_screen_header";
   $heading = "Services For Database on Server";
   $for_what_purpose = "(Services on $server_name)";
   write; 
  
   #--Now the stuff specific to this item
   #------------------------------------- 
   $~ = "display_services_server";
   print "    Database Name      | Service Name              | Instance 1       | Instance 2        | Instance 3\n";
   print "    ------------------ | ------------------------- | ---------------- | ----------------- | -----------------\n"; 


   foreach $line (split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command)){

      ($database_name, $server_name) = split /!~!/, $line;
      #--going to pull the data right from the server itself....
      open (FILE, ">$command_file_ksh");
      print FILE qq[. oraenv << EOF
$database_name
EOF
srvctl status service -d $database_name
];
      close FILE;
      system ("chmod 755 $command_file_ksh");

      @output = `ssh -q oracle\@$server_name \"ksh -s\" < $command_file_ksh`;

      #--house clean
      #-------------
      if (-e $command_file_ksh){
         system("rm $command_file_ksh");
      }

      #--initialize values so we don't have overlap when this routine
      #--is called more than once
      $instance_name1 = "";
      $instance_name2 = "";
      $instance_name3 = "";
      %services = {};
      $service_name = "";

      foreach $line (@output){

         next if ($line eq "");
 
         #---This comes up with data in the form of:
         #---  "Service <service_name> is running on instances(s) <instance_name>,<instance_name>,<instance_name>
         #---- "Service <service_name> is not running.
         #---Need to handle it and display it in a way that makes sense.
         #-------------------------------------------------------------------------------------------------------
         if ($line =~ /Service (\S+) is not running.\n/){
            $service_name = $1;
            $services{1} = "No Value";     
            $services{2} = "No Value";     
            $services{3} = "No Value";     
         }
         elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+),(\w+),(\w+)/){
            $service_name = $1;
            $services{1} = $2;     
            $services{2} = $3;     
            $services{3} = $3;     
         }
         elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+),(\w+)/){
            $service_name = $1;
            $services{1} = $2;     
            $services{2} = $3;     
            $services{3} = "No Value";     
         }
         elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+)/){
            $service_name = $1;
            $services{1} = $2;     
            $services{2} = "No Value";     
            $services{3} = "No Value";     
         }
         $sorted_services  = sort_services(\%services);
         $instance_name1 = $sorted_services->{1};
         $instance_name2 = $sorted_services->{2};
         $instance_name3 = $sorted_services->{3};
         write;
      }
      print "    ------------------ | ------------------------- | ---------------- | ----------------- | -----------------\n"; 
   }

   print "\nHit enter to return to the prvious menu\n";
   <>;
   return "display_scripts_menu";
}

sub display_database_services{


   my $database_id = databases_for_choosing("Choose a Database from Menu", "(for Displaying Database Services)");

   #--early termination of menu if wanted
   #-------------------------------------
   if ($database_id eq 'q'){
      return "display_scripts_menu";
   }

   my $command = qq[select d.database_name ||'!~!'|| min(s.server_name)
                      from servers s join databases d on (d.cluster_id = s.cluster_id)
                     where d.database_id = $database_id
                      group by d.database_name;];

   ($database_name, $server_name) = split /!~!/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command);

   chomp($server_name);

   #--going to pull the data right from the server itself....
   open (FILE, ">$command_file_ksh");
   print FILE qq[. oraenv << EOF
$database_name
EOF
srvctl status service -d $database_name
];
   close FILE;
   system ("chmod 755 $command_file_ksh");

   print "Please be patient,...this pulls from the server and takes a little time.....\n";
   @output = `ssh -q oracle\@$server_name \"ksh -s\" < $command_file_ksh`;


   #--house clean
   #-------------
   if (-e $command_file_ksh){
      system("rm $command_file_ksh");
   }

   clear_screen();

   #--write the header on the screen
   #--------------------------------
   $~ = "display_screen_header";
   $heading = "Services For Database";
   $for_what_purpose = "($database_name on $server_name)";
   write; 
  
   #--Now the stuff specific to this item
   #------------------------------------- 
   $~ = "display_services";
   print "                        Service Name              | Instance 1       | Instance 2        | Instance 3\n";
   print "                        ------------------------- | ---------------- | ----------------- | -----------------\n"; 


   #--initialize values so we don't have overlap when this routine
   #--is called more than once
   $instance_name1 = "";
   $instance_name2 = "";
   $instance_name3 = "";
   %services = {};
   $service_name = "";

   foreach $line (@output){

      next if ($line eq "");
 
      #---This comes up with data in the form of:
      #---  "Service <service_name> is running on instances(s) <instance_name>,<instance_name>,<instance_name>
      #---- "Service <service_name> is not running.
      #---Need to handle it and display it in a way that makes sense.
      #-------------------------------------------------------------------------------------------------------
      if ($line =~ /Service (\S+) is not running.\n/){
         $service_name = $1;
         $services{1} = "No Value";     
         $services{2} = "No Value";     
         $services{3} = "No Value";     
      }
      elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+),(\w+),(\w+)/){
         $service_name = $1;
         $services{1} = $2;     
         $services{2} = $3;     
         $services{3} = $3;     
      }
      elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+),(\w+)/){
         $service_name = $1;
         $services{1} = $2;     
         $services{2} = $3;     
         $services{3} = "No Value";     
      }
      elsif ($line =~ /Service (\S+) is running on instance\(s\) (\w+)/){
         $service_name = $1;
         $services{1} = $2;     
         $services{2} = "No Value";     
         $services{3} = "No Value";     
      }
      $sorted_services  = sort_services(\%services);
      $instance_name1 = $sorted_services->{1};
      $instance_name2 = $sorted_services->{2};
      $instance_name3 = $sorted_services->{3};
      write;
   }
   print "\nHit enter to return to the prvious menu\n";
   <>;
   return "display_scripts_menu";
}
1
