node 'node1' {

    notify{"**** NODE1 BLOCK ****":}

    include java::install
    include tomcat::install
    include tomcat::service
    Class['java::install'] -> Class['tomcat::install'] ~> Class['tomcat::service']

}

node 'node2' {

    notify{"**** NODE2 BLOCK ****":}

    include java::install
    include tomcat::install
    include tomcat::service
    Class['java::install'] -> Class['tomcat::install'] ~> Class['tomcat::service']

}

node default {

    notify{"checkpoint_1":
        message => " **** DEFAULT BLOCK **** " 
    }

}