class munin_prod::service {

service { "munin-node":
ensure => running,
hasstatus => true,
hasrestart => true,
enable => true,
require => Class["munin_prod::config"],
        }
}

