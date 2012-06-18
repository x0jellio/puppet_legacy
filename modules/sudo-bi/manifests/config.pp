
class sudo-bi::config {


file { "/etc/sudoers":
require => Class["sudo-bi::install"],
ensure => present,
owner => 'root',
group => 'root',
mode => 0440,
source => "puppet:///modules/sudo-bi/sudoers.gold",
        }

}
