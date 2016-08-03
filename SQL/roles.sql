SELECT FIRST grantee, second privilege, third grant_option
  FROM (SELECT grantee FIRST, granted_role second, admin_option third
          FROM dba_role_privs
         WHERE grantee = '&&name'
        UNION
        SELECT grantee FIRST, privilege second, admin_option third
          FROM dba_sys_privs
         WHERE grantee = '&&name'
        UNION
        SELECT grantee FIRST,
               privilege || ' on ' || owner || '.' || table_name second,
               grantable third
          FROM dba_tab_privs
         WHERE grantee = '&&name') 
