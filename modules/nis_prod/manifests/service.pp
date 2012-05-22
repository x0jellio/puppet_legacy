class nis_prod::service {

service { "portmap":
ensure => running,
hasstatus => true,
hasrestart => true,
enable => true,
        }

service { "ypbind":
ensure => running,
hasstatus => true,
hasrestart => true,
enable => true,
require => Class["nis_prod::config"],
	}
}
