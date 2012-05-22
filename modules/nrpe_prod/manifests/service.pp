# Class: nrpe_prod::service
#
#   Manage the NRPE service
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class nrpe_prod::service {

  case $operatingsystem {
    centos, redhat, oel: {
      service { 'nrpe':
        ensure     => running,
        enable     => true,
        hasstatus  => true,
        hasrestart => true,
        name       => 'nrpe',
      }
    }
    debian, ubuntu: {
      service { 'nrpe':
        ensure     => running,
        enable     => true,
        hasstatus  => false,
        hasrestart => true,
        status     => "bash -ec 'test -e /var/run/nagios/nrpe.pid && test -e /proc/\$(cat /var/run/nagios/nrpe.pid)'",
        name       => 'nagios-nrpe-server',
      }
    }
    default: {
      fail("operatingsystem $operatingsystem is not supported")
    }
  }

}
