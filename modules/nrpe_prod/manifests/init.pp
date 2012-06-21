# Class: nrpe_prod
#
# This module manages nrpe_prod
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
file { "/etc/nagios":
    ensure => "directory",
    owner  => "nagios",
    group  => "nagios",
    mode   => 750,
}




class nrpe_prod(
  $config = undef
) {

  # JJM This can be any string, but we rely on it being
  # undefined if we're not managing it.
  $config_real = $config

  class { 'nrpe_prod::packages':
    notify => Class['nrpe_prod::service'],
  }

  class { 'nrpe_prod::config':
    config  => $config_real,
    require => Class['nrpe_prod::packages'],
    notify  => Class['nrpe_prod::service'],
  }

  class { 'nrpe_prod::service': }

}
