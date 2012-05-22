class nis::service {

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
require => Class["nis::config"],
	}
}
