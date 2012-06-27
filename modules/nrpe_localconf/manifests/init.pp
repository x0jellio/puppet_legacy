### Module for installation of local configuration for
### the nagios NRPE agent.  All hosts get a standard
### array of checks that are identical.  The configs in
### configs-available are symlinked in localconf.d
### similar to how Debian configures apache.
### The localconf.d directory is included in the nrpe
### config in its entirety (not on a file by file basis.)
###
### Where hosts have different monitoring needs, different
### config files in the configs-available are symlinked.
###

class nrpe_localconf {
	include nrpe_localconf::config
}
