node 'node1' {

    notify{"**** NODE1 BLOCK ****":}
  
    include tomcat
    include common::package

}

node 'node2' {

    notify{"**** NODE2 BLOCK ****":}

    include tomcat
    include common::package

}

node default {

    notify{"checkpoint_1":
        message => " **** DEFAULT BLOCK **** " 
    }

}

