class apache::service {

        service { "apache2":
                 ensure => running,
                 hasstatus => true,
                 hasrestart => true,
                 enable => true,
        }

}
