class munin_test::service {

service { "munin-node":
ensure => running,
hasstatus => true,
hasrestart => true,
enable => true,
require => Class["munin_test::config"],
        }
}

