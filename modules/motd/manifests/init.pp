class motd ($motd_message = 'Daily') {
     #$allowed = [
     #  '^Daily$',
     #  '^Weekly$',
     #]
     # validate_re( $motd_message, $allowed)
     myfile { 'C:\Messageofserver':
     ensure => 'present',
     #subscribe => File['motd/$motd_message'], 
     content => file("motd/${motd_message}"),
     }
}
