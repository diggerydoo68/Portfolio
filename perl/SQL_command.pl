#!/usr/bin/perl


$process_monitoring_check = qq[select  v.view_purpose      ||'!~!'||
                                       v.dbo_account       ||'!~!'||
                                       v.connect_string    ||'!~!'||
                                       v.database_name     ||'!~!'||
                                       v.domain            ||'!~!'||
                                       v.customer_name
                                  FROM process_monitoring_check_v v
                                 ORDER by 1;];