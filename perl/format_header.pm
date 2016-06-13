#!/usr/bin/perl

#----General functions for basic SQL commands against the DataBase
#------------------------------------------------------------------

sub format_sql {
   #--This simply adds some SQL+ commands to have a clean output from the sqlplus execution
   #----------------------------------------------------------------------------------------
   my $sql_command =  " set linesize 500 \n set heading off \n set pagesize 0 \n set feedback off \n ";
   $sql_command .=  shift;
   return $sql_command;
}
1;
