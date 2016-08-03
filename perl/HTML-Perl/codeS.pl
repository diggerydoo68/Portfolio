   $header_command = qq[SELECT d.database_id                                                                ||'!~!'||
                               e.environment_name                                                           ||'!~!'||
                               d.database_name                                                              ||'!~!'||
                               c.scan_name || ':1521/' || DECODE (d.alternate_service_name, NULL, d.database_name, d.alternate_service_name)  ||'!~!'||
                               inside.dr_database_id                                                        ||'!~!'||
                               inside.dr_customer_name                                                      ||'!~!'||
                               inside.dr_database_name                                                      ||'!~!'||
                               inside.dr_connect_string
                          FROM databases d JOIN clusters c ON (d.CLUSTER_ID = c.CLUSTER_ID)
                                           JOIN databases_to_environments de ON (d.database_id = de.database_id)
                                           JOIN environments e ON (de.environment_id = e.environment_id)
                                           JOIN (SELECT di.database_id dr_database_id,
                                                        ei.environment_name dr_customer_name,
                                                        di.database_name dr_database_name,
                                                        ci.scan_name || ':1521/' || DECODE (di.alternate_service_name, NULL, di.database_name, di.alternate_service_name) dr_connect_string,
                                                        DI.DR_FOR_WHICH_DATABASE
                                                   FROM databases di JOIN clusters ci ON (di.CLUSTER_ID = ci.CLUSTER_ID)
                                                                     JOIN databases_to_environments dei ON (di.database_id = dei.database_id)
                                                                     JOIN environments ei ON (dei.environment_id = ei.environment_id)) inside ON (inside.dr_for_which_database = d.database_id)
                         WHERE d.database_id = $user_choices{$user_choice}[2];];

						 
						 
select *
from databases
where dr_for_which_database IS NOT NULL 