class profile::pdb_mssql {
    include puppetlabs-sql
    sqlserver_instance{ 'MSSQLSERVER':
      features                => ['SQL'],
      source                  => 'C:/temp/sql2017',
      sql_sysadmin_accounts   => ['Administrator'],
    } 
 

}
