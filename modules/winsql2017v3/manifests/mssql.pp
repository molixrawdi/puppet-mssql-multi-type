# A description of what this class does
#
# @summary A short summary of the purpose of this class
#
# @example
#   include winsql2017v3::mssql
class winsql2017v3::mssql (
  # See http://msdn.microsoft.com/en-us/library/ms144259.aspx
  # Media is required to install
  $media          = $mssql::params::media,
  $instancename   = $mssql::params::instancename,
  $features       = $mssql::params::features,
  $agtsvcaccount  = $mssql::params::agtsvcaccount,
  $agtsvcpassword = $mssql::params::agtsvcpassword,
  $assvcaccount   = $mssql::params::assvcaccount,
  $assvcpassword  = $mssql::params::assvcpassword,
  $rssvcaccount   = $mssql::params::rssvcaccount,
  $rssvcpassword  = $mssql::params::rssvcpassword,
  $sqlsvcaccount  = $mssql::params::sqlsvcaccount,
  $sqlsvcpassword = $mssql::params::sqlsvcpassword,
  $instancedir    = $mssql::params::instancedir,
  $ascollation    = $mssql::params::ascollation,
  $sqlcollation   = $mssql::params::sqlcollation,
  $admin          = $mssql::params::admin,
) inherits winsql2017v3::params {

   # validation
 # validate_string($media)
  #validate_string($instancename)
  #validate_string($features)
  #validate_string($agtsvcaccount)
  #validate_string($agtsvcpassword)
  #validate_string($assvcaccount)
  #validate_string($assvcpassword)
  #validate_string($rssvcaccount)
  #validate_string($rssvcpassword)
  #validate_string($sqlsvcaccount)
  #validate_string($sqlsvcpassword)
  #validate_string($instancedir)
  #validate_string($ascollation)
  #validate_string($sqlcollation)
  #validate_string($admin)
  

  User {
    ensure   => present,
    before => Exec['install_mssql2017'],
  }

  user { 'SQLAGTSVC':
    comment  => 'SQL 2017 Agent Service.',
    ensure => 'present',
    password => $agtsvcpassword,
  }
  user { 'SQLASSVC':
    comment  => 'SQL 2017 Analysis Service.',
    ensure => 'present',
    password => $assvcpassword,
  }
  user { 'SQLRSSVC':
    comment  => 'SQL 2017 Report Service.',
    ensure => 'present',
    password => $rssvcpassword,
  }
  user { 'SQLSVC':
    comment  => 'SQL 2017 Service.',
    ensure => 'present',
    groups   => 'Administrators',
    password => $sqlsvcpassword,
  }

  file { 'C:/temp/sql2017/setup.exe':
    #content => template('mssql/config.ini.erb'),  #changed by Mo Mon 11/02/2019
    content =>template('C:\ProgramData\PuppetLabs\code\environments\test\modules\winsql2017v3\templates\configuration.ini.erb'),
  }

  exec { 'install_mssql2017':
    command   => "c:\temp\sql2017\setup.exe /Action=Install /IACCEPTSQLSERVERLICENSETERMS /QS /CONFIGURATIO
NFILE=C:\\temp\sql2017\ConfigurationFile.ini /SQLSVCPASSWORD=\"${sqlsvcpassword}\" /AGTSVCPASSWORD=\"${agtsvcpassword
}\" /ASSVCPASSWORD=\"${assvcpassword}\" /RSSVCPASSWORD=\"${rssvcpassword}\"",
    cwd       => $media,
    path      => $media,
    logoutput => true,
    creates   => $instancedir,
    timeout   => 1200,
    #require   => File['puppet://modules/winsql2017v3/ConfigurationFile.ini'],
  }
}
