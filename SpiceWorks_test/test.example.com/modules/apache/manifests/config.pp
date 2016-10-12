ass apache::config {

        file {
              "/etc/apache2/apache2.conf":
              ensure => present,
              owner => "root",
              group => "root",
              mode => "0644",
              source => ["puppet:///modules/apache/apache2.conf"],
              require => Class["apache::install"],
              notify => Class["apache::service"];

              "/etc/apache2/sites/test.example.com":
              ensure => present,
              owner => "root",
              group => "root",
              mode => "0644",
              source => ["puppet:///modules/apache/test.example.com"];

              "/var/www/test.example.com":
              ensure => "directory",
              owner => "apache",
              group => "apache",
              mode => 0755;

              "/var/www/test.example.com/index.html":
              ensure => present,
              owner => "apache",
              group => "apache",
              source => ["puppet:///modules/apache/index.html"];

              "/opt/apache_tools":
              ensure => "directory",
              owner => "root",
              group => "root",
              mode => "0644";

              "/opt/apache_tools/apache_report.sh":
              ensure => "directory",
              owner => "root",
              group => "root",
              source => ["puppet:///modules/apache/apache_report.sh"];

        }
}
