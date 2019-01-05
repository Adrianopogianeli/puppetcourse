
class tomcat {

    include java::install
    include tomcat::install
    include tomcat::service

    Class['java::install'] -> Class['tomcat::install'] ~> Class['tomcat::service']
}
