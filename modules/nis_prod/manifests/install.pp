class nis_prod::install { 

package { "ypbind":
ensure => present,
	}

package { "portmap":
ensure => present,
}

}
