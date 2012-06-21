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



if $operatingsystemrelease  == "6.0" {

      package { [ 
                   "nagios-plugins",
                   "nrpe", ] :
    
		ensure => installed, 
}
} elsif $lsbmajdistrelease == "5" {


package { [  
                
                  "nagios-plugins",
                   "nagios-nrpe", ] :
    
                ensure => installed,
	}
				}

}
