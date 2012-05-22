# Define: nrpe_prod::command
#
#   Manage a command in /etc/nrpe.d
#
#   Copied from mcollective-plugins github project.
#
# Parameters:
#
# Actions:
#
# Requires:
#
# Sample Usage:
#
define nrpe_prod::command(
  $command,
  $parameters = '',
  $cplugdir   = 'auto',
  $ensure     = 'present'
) {

  # Figure out where command fragments should be dropped
  $nrpe_dir_real = $nrpe_prod::params::nrpe_dir

# find out the default nagios paths for plugis
  $defaultdir = $::architecture ? {
    "x86_64" => "/usr/lib64/nagios/plugins",
    default  => "/usr/lib/nagios/plugins",
  }

# if we overrode cplugdir then use that, else go with the nagios default
# for this architecture
  case $cplugdir {
    'auto':    { $plugdir = $defaultdir }
    default: { $plugdir = $cplugdir }
  }

  case $ensure {
    "absent":    {
      file{"${nrpe_dir_real}/${name}.cfg":
        ensure => absent,
        notify => Class['nrpe_prod::service'],
      }
    }
    default: {
      file {"${nrpe_dir_real}/${name}.cfg":
        owner   => '0',
        group   => '0',
        mode    => '0644',
        content => template("${module_name}/nrpe-config.erb"),
        require => Class['nrpe_prod::packages'],
        notify  => Class['nrpe_prod::service'],
      }
    }
  }
}
# EOF
