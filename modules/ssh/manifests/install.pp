class ssh::install{ 
file { "/root/.ssh/authorized_keys" : 
	ensure => present, 
	replaces => yes
	}
}
