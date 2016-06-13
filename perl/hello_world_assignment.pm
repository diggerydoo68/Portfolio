#!/usr/bin/perl
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
#--global parameters here. Check these and make sure you are ok with them....
#----------------------------------------------------------------------------
$ENV{ORACLE_HOME}='/xt071dcov0/app/oracle/product/11.2.0.3.06';
$ENV{PATH}="$ENV{PATH}:$ENV{ORACLE_HOME}/bin";
$ENV{TNS_ADMIN}='/xt071dcov0/app/oracle/etc';
$command_file="/fisc/oracle/xtrac-dba/development/Randy/command.sql";

$base_dir="/fisc/oracle/xtrac-dba/development/Randy";
$auth = "/fisc/oracle/work/vault/bin/authorize -f /fisc/oracle/work/vault/bin/authfile.des ";
$xdbaprod_user = 'xdbaprod';
#-----
$SLC = `$auth xdbaprod`;                     #---SLC Team XDBAPROD password
$PSS = `$auth xdbaprod_pss`;              #---PSS Team XDBAPROD password
#-----

chomp($SLC);
chomp($PSS);


#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
#----General functions for basic SQL commands against the DataBase
#------------------------------------------------------------------
require "$base_dir/format_header.pm";  #---This is used by the execute_sql sub routine...so it is pulled in.
require "$base_dir/execute_sql.pm";    #---This pull in the execute_sql sub routine...like it was written inline.

#--Hey randy......please write some lines of code that pulls "Hello World" from the XDBA database and displays to screen.
#--You will need to use the "execute_sql" procedure, and pass it something like this......
#--execute_sql (xdba_user, xdba_password, database_connect_string, database_name, sql_command);
#--If you get stuck,...the answer is in 'dont_look_at_this_unless_last_resort'.... :-)

$db_conn_string = "vlcov71:1521/XDBA";
$db_name = 'XDBA';


$result_set = execute_sql ($xdbaprod_user, $SLC, $db_conn_string, $db_name, "select 'hello world' from dual;");

print "$result_set\n";
 

