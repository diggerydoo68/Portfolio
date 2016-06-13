#!/usr/bin/perl

$ENV{ORACLE_HOME}='/xt071dcov0/app/oracle/product/11.2.0.3.06';
$ENV{PATH}="$ENV{PATH}:$ENV{ORACLE_HOME}/bin";
$ENV{TNS_ADMIN}='/fisc/oracle/etc';
$command_file="$base_dir/command.sql";
$command_file_ksh="$base_dir/command.ksh";
#---
$monitoringdba_usr = 'monitoringdba';
$monitoringdba_pwd = 'monitoringdba';
$monitoringdba_database = 'XTSDEVC_OMA';
$monitoringdba_connection_string = 'xddevoma-scan:1521/XTSDEVC_OMA';
#---
$auth = "/fisc/oracle/work/vault/bin/authorize -f /fisc/oracle/work/vault/bin/authfile.des ";
chomp($slc = `$auth xdbaprod`);
chomp($pss = `$auth xdbaprod_pss`);
$pdb_usr = 'C##PDBMONITOR';
chomp($pdb_pwd = `$auth pdbmonitor`);
1;


