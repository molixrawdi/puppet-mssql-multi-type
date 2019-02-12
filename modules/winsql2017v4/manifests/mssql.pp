# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include winsql2017v3::mssql
class winsql2017v4::mssql (
  # See http://msdn.microsoft.com/en-us/library/ms144259.aspx
  # Media is required to install
  $sourcedir      = "c:\SQL2017",
  $instancename   = 'MSSQLSERVER',
) inherits winsql2017v4::params {

   exec { 'install_mssql2017':
          command => "${sourcedir}\\setup.exe /IAcceptSQLServerLicenseTerms /Action=Install /ConfigurationFile=${sourcedir}\\ConfigurationFile.ini", 
   }       
}
