# == class: mssql::params
#
# This class manages MSSQL paraameters
#
# == Paramaters
#
# $instancename
# $features
# $agtsvcaccount
# $agtsvcpassword
# $assvcaccount
# $assvcpassword
# $rssvcaccount
# $rssvcpassword
# $sqlsvcaccount
# $sqlsvcpassword
# $instancedir
# $ascollation
# $sqlcollation
# $admin
#
class mssql::params {
  $instancename   = 'MSSQLSERVER'
  $features       = 'SQLENGINE,BC,SDK,SNAC_SDK,MDS' # old ones'SQL,AS,RS,IS'
  $agtsvcaccount  = 'SQLAGTSVC'
  $agtsvcpassword = 'Sql!@gt#2017demo'
  $assvcaccount   = 'SQLASSVC'
  $assvcpassword  = 'Sql!@s#2017demo'
  $rssvcaccount   = 'SQLRSSVC'
  $rssvcpassword  = 'Sql!Rs#2017demo'
  $sqlsvcaccount  = 'SQLSVC'
  $sqlsvcpassword = 'Sql!#2017demo'
  $instancedir    = 'C:\Program Files\Microsoft SQL Server'         #\140\MSSQL\Binn\sqlservr.exe'
  $ascollation    = 'Latin1_General_CI_AS'
  $sqlcollation   = 'SQL_Latin1_General_CP1_CI_AS'
  $admin          = 'Administrator'
  $media          = 'C:\temp\sql2017'
}
