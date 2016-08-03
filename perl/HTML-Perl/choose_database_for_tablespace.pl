#!/usr/bin/perl

#\/\/\/\/\/\/\/\/\/\/\/\/\/
#--------Global Parameters
#\/\/\/\/\/\/\/\/\/\/\/\/\/
use CGI qq(:cgi);
use CGI::Carp qw(fatalsToBrowser);
use Monitoringdba_Subs;

$variable = {};
@q = {};
$q = new CGI;
@row = ();

require "environment_variables.pm";
to_make_files_unique();

sub create_list{

   #--first, get the variable that is passed in:
   $sql_code = qq[SELECT distinct d.database_name ||'!~!'|| s.transitional || '!~!'|| d.database_id
                    FROM databases d join servers s on (d.cluster_id = s.cluster_id)
                   WHERE d.is_a_dr = 'N'
                     AND d.is_accessible = 'Y';];


   print qq[<h3 align="center"><select name="database_id">\n];

   foreach $line  (split /\n/, execute_sql($monitoringdba_usr,
                                           $monitoringdba_pwd,
                                           $monitoringdba_connection_string,
                                           $monitoringdba_database,
                                           $sql_code)){


      ($database_name, $transitional, $database_id) = split /!~!/, $line;

      print qq[<option value="$database_id">$database_name ($transitional)</option>\n];

   }
   print "</select><br><br>\n";

}


#================================================
#         MAIN SECTION OF
#================================================
#
#
print $q->header;
print qq[<!DOCTYPE html PUBLIC "-//IETF//DTD HTML 2.0//EN">
<HTML>
<TITLE>Individual Tablespaces Toggle</TITLE>
<style>
   table, th, td {
   border: 1px solid black;
}
</style>
<BODY>
<center><h1>Tablespace Monitoring Enable/Disable Control</h1></center><p>
<center><h3>(This will enable/disable the given tablespace monitor)</h3></center><p>
<center><h3>Please Choose a database off the drop down list</h3></center><p>

<FORM ACTION="tablespace_level_monitoring.pl" TARGET="right" method="post">
];
   create_list();
print qq[
   <input type="submit" value="Submit"></h3>
</FORM>
</BODY>
</HTML>];
