#!/usr/bin/perl
sub init_ora_specific_parameters{
	print "Hello World!\n";
	<>;
	return;
	
#//////////////////////////////////////////////////////////////////////
# -- Clear screen first
# -- Write header 
# -- loop through until users give DBA name
# -------- pull name and connect info from inventory
# --------	pull parameters from inventory
# -- Push the values above into a hash
# -- asure that the key value points to the 2d matrix
# write a query that to pull information regarding parameters
#///////////////////////////////////////////////////////////////////////

# -- Clear the screen
clear_screen();

# -- The Header
$~ = "display_screen_header"; # -- where is this referencing?
$heading = "INIT_ORA_Parameters\n";
write;

# -- for loop that loops until person gives answer
 print "Please enter the first few characters to the DB you want or 'q' to quit:\n";
   chomp($db_name = <>);
   if ($db_name eq 'q'){
      return;
   }
# -- qq is alternative for double quotes
# -- here is where your query will be written
# -- The !~ is a binding operator that is used to search, modify, and translation operations. (!~) is the opposite of (=~) 
# -- the !~ returns TRUE when there is no match. The =~ returns TRUE when there is a match.  
# -- The =~ is a test and assignment
# -- The || '!~!' ||.  The " | " is an alternation(match one of the other) and " || " means that OR. In this particular case the "|| '!~!' ||" means
# -- that for the distinct database name pull that value; whatever is written their and put it into a hash
  
   my $command = qq[ SELECT distinct d.database_name || '!~!' || c.scan_name || ':1521/' || d.database_name ||'!~!'|| s.transitional
                                                     ||'!~!'|| d.is_a_container
                       FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                        JOIN servers s on (s.cluster_id = c.cluster_id)
                      where d.is_a_dr = 'N'
                        and d.is_accessible = 'Y'
                        and upper(d.database_name) like upper(\'%$db_name%\');];
	# -- Split function will "split" a string expression into fields based on delimiters specified by PATTERN. If no PATTERN is specified then  whitespace
	# -- is the default

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
      $command = qq[select distinct 'Non PDB' ||'!~!'||
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

}

init_ora_specific_parameters();