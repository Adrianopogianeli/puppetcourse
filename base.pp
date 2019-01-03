user {'deploy':
    
    ensure     => present,
    uid        => 5001,
    home       => '/home/deploy',
    password   => '$1$7DIHEGxo$FujNzTGqoRGFP/ievQ3kg/',
    managehome => true,
}

user {'dojo':
    ensure     => absent,
}

Exec {
    path => [
       '/usr/local/bin',
       '/opt/local/bin',
       '/usr/bin',
       '/usr/sbin',
       '/bin',
       '/sbin'],
    logoutput => true,
}
exec {'apt-get update':}

package { ['tree','git','ntp','wget','unzip']: }
 
file{ '/etc/motd':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
    content => '
        Property of XYZ
        ',
}

service{ 'ntp':
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
}