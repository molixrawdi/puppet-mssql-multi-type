define motd::admin_file { 
   include motd::params
   $admingroup = $motd::params::admingroup
   file { $title : 
      content => file('motd/motd.conf'),
      owner   => 'root',
      group   => $admingroup,
      mode    => '0664',
      ensure  => 'file',
      notify  => Class['motd::service'],
   }
 
}

