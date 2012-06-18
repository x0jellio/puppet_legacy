
class sudo-dev::config {


file { "/etc/sudoers":
ensure => present,
owner => 'root',
group => 'root',
mode => 440,
source => "puppet:///modules/sudo-dev/sudoers.gold",
        }

}
