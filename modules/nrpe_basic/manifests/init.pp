# Class: nrpe_basic
#
#file { "/etc/nagios":
#    ensure => "directory",
#    owner  => "nagios",
#    group  => "nagios",
#    mode   => 750,
#}

class nrpe_basic{ 
include nrpe_basic::packages, nrpe_basic::config, nrpe_basic::service 
}

  class { 'nrpe_basic::packages':
    notify => Class['nrpe_basic::service'],
  }

  class { 'nrpe_basic::config':
    require => Class['nrpe_basic::packages'],
    notify  => Class['nrpe_basic::service'],
  }

