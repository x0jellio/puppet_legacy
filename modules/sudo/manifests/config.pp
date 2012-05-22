
class sudo::config {


file { "/etc/sudoers":
require => Class["sudo::install"],
ensure => present,
owner => 'root',
group => 'root',
mode => 440,
source => "puppet:///modules/sudo/sudoers.gold",
        }

}
