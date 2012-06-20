class nis_prod::service {




if $operatingsystemrelease == "6" {
service { "rpcbind":
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
} elsif $operatingsystemrelease == "5.5" {



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
}

