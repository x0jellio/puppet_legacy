# Class: ganglia::webserver
#
# This class installs the ganglia web server
#
# Parameters:
#
# Actions:
#   installs the ganglia web server
#
# Sample Usage:
#   include ganglia::server
#
class ganglia::webserver {

  $ganglia_webserver_pkg = 'ganglia-web'

  package {$ganglia_webserver_pkg:
    ensure => present,
    alias  => 'ganglia_webserver',
  }

#  file {'/etc/httpd/sites-enabled/apache.conf':
#    ensure  => link,
#    target  => '/etc/ganglia-webfrontend/apache.conf',
#    require => Package['ganglia_webserver'];
#  }
}
