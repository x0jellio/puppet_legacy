
class sudo-test::config {


file { "/etc/sudoers":
require => Class["sudo-test::install"],
ensure => present,
owner => 'root',
group => 'root',
mode => 440,
source => "puppet:///modules/sudo-test/sudoers.gold",
        }

}
