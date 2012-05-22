# Class: nrpe_basic::packages
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
class nrpe_basic::packages {

  Package { ensure => installed }

  case $operatingsystem {
    centos, redhat, oel: {
      package { 'nagios-plugins-all': }
   #   -> package { 'nagios-plugins-file_age': }
   #   -> package { 'nagios-plugins': }
     -> package { 'nagios-nrpe': }
      -> package { 'nagios-plugins-nrpe.x86_64':}  
   }
    default: {
      fail("operatingsystem $operatingsystem is not supported")
    }
  }


}
