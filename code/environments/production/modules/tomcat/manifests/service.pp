class tomcat::service {

    service { 'tomcat':
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
    }

}