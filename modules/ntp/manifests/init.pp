# manage NTP on Windows and Ubuntu hosts

class ntp { 
        package 'ntp':
            before => Class['ntp::config'],
        }
        
        class { ntp::config: location => 'paris', }
        include ntp::service
      }:wq!

