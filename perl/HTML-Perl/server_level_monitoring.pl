#!/usr/bin/perl

#\/\/\/\/\/\/\/\/\/\/\/\/\/
#--------Global Parameters
#\/\/\/\/\/\/\/\/\/\/\/\/\/
use CGI qq(:cgi);
use CGI::Carp qw(fatalsToBrowser);
use Monitoringdba_Subs;

@q = {};
$q = new CGI;

require "environment_variables.pm";
to_make_files_unique();

sub create_list{

   $sql_code = qq[select server_id                                 ||'!~!'||
                         server_name                               ||'!~!'||
                         server_name ||' (' || transitional ||')'  ||'!~!'||
                         server_monitoring_flag                    ||'!~!'||
                         server_monitoring_notes
                    from servers
                    order by transitional, server_name;];

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr,
                                           $monitoringdba_pwd,
                                           $monitoringdba_connection_string,
                                           $monitoringdba_database,
                                           $sql_code)){

      ($server_id, $server_name, $server_label, $monitoring_flag, $notes) = split /!~!/, $line;


      if ($monitoring_flag eq 'Y'){
         $monitoring_checked = "checked";
      }
      else{
         $monitoring_checked = "";
      }
      #--generate some output
      #----------------------
      #

      print qq[   <tr>
      <td align="left" width="20%"><input type="checkbox" name="$server_id.checked" $monitoring_checked> $server_label </td>
      <td align="center"><input type="text" size="120" name="$server_id.notes" value="$notes"></td>
   </tr>\n];
   }

}


#================================================
#         MAIN SECTION OF
#================================================
#
#
print $q->header;
print qq[<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">
<HTML>
<TITLE>Servers Monitoring Toggle</TITLE>
<style>
   table, th, td {
   border: 1px solid black;
}
</style>
<BODY>
<center><h1>Server Monitoring Enable/Disable Control</h1></center><p>
<center><h3>(This will enable/disable [unless shut off at lower level]  everything that touches these servers)</h3></center><p>
<FORM ACTION="./server_level_monitoring_processing.pl" TARGET="right" method="post">
<table style="width:95%" align="center">
 <tr>
      <th bgcolor="yellow" style="width:20%">Server Monitoring ON/OFF</th>
      <th bgcolor="yellow">Note as to why things may be DISABLED</th>
   </tr>
];

  create_list();

print qq[
   <tr>
      <td colspan="4" align="center"><input type="submit" value="Submit"></td>
   </tr>
</FORM>
</BODY>
</HTML>];
