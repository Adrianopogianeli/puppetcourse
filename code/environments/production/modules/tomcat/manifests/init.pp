
class tomcat inherits tomcat::params {

    notify{"checkpoint_tomcat_init":}
    

    include java::install
    include tomcat::install
    include tomcat::config
    include tomcat::service

    Class['java::install'] -> Class['tomcat::install'] ~> Class['tomcat::service']
}
