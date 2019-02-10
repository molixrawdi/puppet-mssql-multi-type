
class win2016sql2017::mssql2017-install{
    
 exec  {"Microsoft SQL Server 2017 (64-bit)":
    command =>"c:/temp/sql2017/setup.exe /Action=Install /IACCEPTSQLSERVERLICENSETERMS /QS /CONFIGURATIONFILE=C:\\sql2008install.ini", 
    cwd => 'C:/temp/sql2017/setup.exe',
    path => 'C:/temp/sql2017/setup.exe',
    # Failed install_options => ['/quite'],
    require => [ File['C:/temp/sql2017/ConfigurationFile.ini'] ],   
 }

}


