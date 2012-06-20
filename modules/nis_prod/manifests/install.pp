class nis_prod::install { 



if $operatingsystemrelease == "6" {

      package { [
                   "ypbind",
                   "rpcbind", ] :

                ensure => installed,
}
} elsif $operatingsystemrelease == "5.5" {


package { [

                  "ypbind",
                   "portmap", ] :

                ensure => installed,
}
                                }
}
