# Class: nrpe_basic::config
#
#   Manage the configuration skeleton for NRPE
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
class nrpe_basic::config(
  $config = undef,
  $cplugdir = 'auto'
) inherits nrpe_basic::params {

  $config_real = $config

  # if we overrode cplugdir then use that, else go with the nagios default for
  # this architecture
  # JJM FEATURE data this parameter is duplicated in the nrpe_basic::command
  # defined resource type.  It's a potential candidate for data in modules or
  # heira or something.
  $plugdir = $cplugdir ? {
    'auto'  => $defaultdir,
    default => $cplugdir,
  }


### As of Jun 25, 2012, this stanza temporarily commented
### out to test a new nrpe.cfg in the nrpe_localconf module.
### When that has been validated, the nrpe.cfg config from 
### that module should be moved back here. (DKC)
#  file { '/etc/nagios/nrpe.cfg':
#    ensure  => 'file',
#    owner   => '0',
#    group   => '0',
#    mode    => '644',
#    content => $config_real,
#  }

}
