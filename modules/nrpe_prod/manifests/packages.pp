# Class: nrpe_prod::packages
#
#   Packages for NRPE
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class nrpe_prod::packages {

  Package { ensure => installed }

  case $operatingsystem {
    centos, redhat, oel: {
      package { 'nagios-plugins-all': }
      -> package { 'nagios-plugins-file_age': }
      -> package { 'nagios-plugins': }
      -> package { 'nagios-nrpe': }
    }
    default: {
      fail("operatingsystem $operatingsystem is not supported")
    }
  }


}
