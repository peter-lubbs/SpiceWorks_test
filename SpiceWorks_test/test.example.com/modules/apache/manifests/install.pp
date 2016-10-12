class apache::install {

        package { ['apache2']:
                ensure => installed,
        }

        exec { "/usr/sbin/a2enmod rewrite":
              notify => Service[apache2]
        }

}
