#!/usr/bin/perl

#--Global variables you should looked at and set in every one of these perl scripts.
#--Make sure they are right....
#--
#--  Utility Functions (called by others internally):
#--  ------------------------------------------------
#--     clear_screen() 
#--     sort_services (hash_ref) returns hash_ref
#--     exit_the_program() 
#--     databases_for_choosing(heading, for_what_purpose) returns user_response
#---------------------------------------------------------------------------------------------------------------------------------------------------------
#-- Process Functions:
#-- ------------------
#---------------------------------------------------------------------------------------------------------------------------------------------------------

#--required global here
#----------------------
$base_dir="/fisc/oracle/xtrac-dba/development/Randy";
$metric_file    = "$ENV{base_dir}/db_metric_file.txt";
$xdbaprod_user = 'xdbaprod';

#--Pull in the generic stuff
#---------------------------

require "$base_dir/environment_variables.pm";
require "$base_dir/format_header.pm";
require "$base_dir/execute_sql.pm";
##require "$base_dir/formats.pm";

#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
# Formats to make it all pretty
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/

format ACTIVE_USER_METRIC = 
@<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
$variable1,              $variable2,                        
.
format WI_CREATED_METRIC = 
@<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
$variable1,              $variable2,                        
.
format WI_UPDATED_METRIC = 
@<<<<<<<<<<<<<<<<<<<<<< @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< 
$variable1,              $variable2,                        
.

#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
# SQL STRINGS USED TO CREATE THE METRICS
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

$active_user_metric_db = "SELECT trunc(login_d) ||'!~!'|| count(distinct oper_id) 
			    from $wf_dbo.T_XUSA_SESSION_AUDIT
			   where login_d > TRUNC(ADD_MONTHS(SYSDATE, -1),'MM')
  			     and login_d < TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE, -1)))+1
			   group by trunc(login_d) order by trunc(login_d);";


$server_up_down_check="SELECT trunc(WORK_ITEM_ENTR_D) ||'!~!'|| count(*) 
		         from $wf_dbo.t_tkwi_work_item
		        WHERE WORK_ITEM_ENTR_D > TRUNC(ADD_MONTHS(SYSDATE, -1),'MM')
			  and WORK_ITEM_ENTR_D < TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE, -1)))+1
			group by trunc(WORK_ITEM_ENTR_D) order by trunc(WORK_ITEM_ENTR_D);";
 

$crs_database_db_to_check="SELECT trunc(EVT_D) ||'!~!'|| count(distinct file_n) 
			     from $wf_dbo.t_tkwh_work_hist
			    WHERE EVT_D > TRUNC(ADD_MONTHS(SYSDATE, -1),'MM')
			      AND EVT_D < TRUNC(LAST_DAY(ADD_MONTHS(SYSDATE, -1)))+1
			      AND EVT_TY_C not in ('OPEN','CLOSE','SYSOPN','SYSCLS','VIEW')
		   	    GROUP BY TRUNC(EVT_D) ORDER BY TRUNC(EVT_D);";

$wf_dbo_qry="SELECT DISTINCT
          i.workflow_dbo || '!~!' || i.customer || '!~!' || c.scan_name || ':1521/' || 
          DECODE (d.alternate_service_name,
                  NULL, d.database_name,
                  d.alternate_service_name) 
  FROM implementations i
       JOIN databases d ON (i.database_id = d.database_id)
       JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
       JOIN servers s ON (c.CLUSTER_ID = s.CLUSTER_ID);";


#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
#--Main body 
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\

my @wf_dbo_list = split /\n/, execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $wf_dbo_qry); 

foreach $line (@wf_dbo_list)
{
  my ($wf_dbo, $customer, $db_url) = split /!~!/, $line; 
  print " \n";
  print "$wf_dbo\n";
  print "$customer\n";
  print "$db_url\n";
  print " \n";

}

##$command = "select 'hello world' from dual;";

##$db_result_set= execute_sql($monitoringdba_usr, $monitoringdba_pwd, $monitoringdba_connection_string, $monitoringdba_database, $command);

##print $db_result_set;



