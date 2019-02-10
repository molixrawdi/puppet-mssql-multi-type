package { "Microsoft SQL Server 2017":
          ensure => installed,
          source => 'C:\Users\Administrator\Downloads\SW_DVD9_NTRL_SQL_Svr_Standard_Edtn_2017_64Bit_English_OEM_VL_X21-56945.ISO', 
          install_options => ['/VERYSILENT']
}

