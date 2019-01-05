class common::package {

    notify{" *** Installing common packages *** ":}

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

#    exec {'apt-get update':}


    package{ ['tree','git','ntp','wget','unzip','vim'] :}

}