#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
format PROCESS_MONITORNG_ENV_HEADER =
-/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
-DATABASE_NAME | DBO_ACCOUNT | CONNECT_STRING                             | CUSTER_NAME | DOMAIN | IS_PROD
-------------- | ----------- | ------------------------------------------ | ----------- | ------ | ------ 
.


format PROCESS_MONITOR_REPORT_HEADER =
-/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
-/\/\/\/\/\/\/\/\/\/\/\ /\-- looks for 12 jobs owned the by the DBO_ACCOUNT -- /\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
-/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\
-DATABASE_NAME | DBO_ACCOUNT | CONNECT_STRING                             | CUSTER_NAME | DOMAIN | IS_PROD | STATUS
-------------- | ----------- | ------------------------------------------ | ----------- | ------ | ------- | ------

.


format PROCESSE_MONITOR_ENV =
@<<<<<<<<<<<<< | @<<<<<<<<<< | @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< | @<<<<<<<<<< | @<<<<< | @<<<<<< 
$variable1, $variable2,$variable3,$variable4,$variable5,$variable6
.


format PROCESS_MONITOR_REPORT =
@<<<<<<<<<<<<< | @<<<<<<<<<< | @<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<< | @<<<<<<<<<< | @<<<<< | @<<<<<< | @<<<<<<
$variable1, $variable2,$variable3,$variable4,$variable5,$variable6,$variable7
.


#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
#\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/



#############################################################################################################################################
#############################################################################################################################################
#############################################################################################################################################
#-- View creation for Process Monitoring
DROP VIEW MONITORINGDBA.PROCESS_MONITORING_V;

/* Formatted on 07/21/2016 12:41:52 PM (QP5 v5.277) */
CREATE OR REPLACE FORCE VIEW MONITORINGDBA.PROCESS_MONITORING_V
(VIEW_PURPOSE, DBO_ACCOUNT, CONNECT_STRING, DATABASE_NAME, DOMAIN,
 CUSTOMER)
BEQUEATH DEFINER
AS
SELECT DISTINCT
       'PROCESS',
       DO.ACCOUNT_NAME,
          C.SCAN_NAME
       || ':1521/'
       || DECODE (D.ALTERNATE_SERVICE_NAME,
                  NULL, D.DATABASE_NAME,
                  D.ALTERNATE_SERVICE_NAME),
       D.DATABASE_NAME,
       S.TRANSITIONAL,
          IC.INDIVIDUAL_CUSTOMER_NAME
       || DECODE (do.is_prod, 'Y', ' (PROD)', NULL)
  FROM DATABASES d
       JOIN CLUSTERS c ON (D.CLUSTER_ID = c.CLUSTER_ID)
       JOIN SERVERS S ON (C.CLUSTER_ID = S.CLUSTER_ID)
       JOIN DBO_ACCOUNTS do ON (DO.DATABASE_ID = D.DATABASE_ID)
       JOIN INDIVIDUAL_CUSTOMERS ic ON (DO.CUST_ID = IC.PK_VALUE)
  WHERE    DO.ACCOUNT_TYPE = 'PROCESS' 
       AND D.IS_A_DR = 'N'
       AND D.IS_A_CONTAINER = 'N'
       AND D.IS_ACCESSIBLE = 'Y'
       AND D.DATABASE_MONITORING_FLAG = 'Y'
       AND S.SERVER_MONITORING_FLAG = 'Y'
       AND IC.INDIVIDUAL_CUSTOMER_NAME IN ('DPS','FPCMS');











.database_name, connection_string, customer_name, domain, IS_PROD