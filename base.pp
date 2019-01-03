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

package {'tree':
    ensure => installed,
    require  => Exec['apt-get update'],
}
package {'git':
    ensure => installed,
    require  => Exec['apt-get update'],
}
package {'ntp':
    ensure => installed,
    require  => Exec['apt-get update'],
}
package {'wget':
    ensure => installed,
    require  => Exec['apt-get update'],
}
package {'unzip':
    ensure => installed,
    require  => Exec['apt-get update'],
}

file{'/etc/motd':
    ensure  => present,
    content => 'Property of XYZ',
    owner   => 'root',
    group   => 'root',
    mode    => '640',
}

service{'ntp':
    ensure => running,
    enable => true,
    hasstatus => true,
    hasrestart => true,
}