# Class: ganglia::server
#
# This class installs the ganglia server
#
# Parameters:
#
# Actions:
#   installs the ganglia server
#
# Sample Usage:
#   include ganglia::server
#
class ganglia::server {

  include ganglia::client


  package {'ganglia-gmetad':
    ensure => present,
    alias  => 'ganglia_server',
  }

  service {'gmetad':
    ensure  => 'running',
  }

  file {'/etc/ganglia/gmetad.conf':
    ensure  => present,
    notify  => Service['gmetad'],
    content => template('ganglia/gmetad.conf');
  }

}
