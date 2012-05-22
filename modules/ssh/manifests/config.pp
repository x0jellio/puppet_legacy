
class ssh::config {

file { "/root/.ssh/authorized_keys":
ensure => present, 
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/ssh/authorized_keys"
}




file { "/etc/ssh/sshd_config":
ensure => present,
owner => 'root',
group => 'root',
mode => 0600,
source => "puppet:///modules/ssh/sshd_config",
require => Class["ssh::install"],
notify => Class["ssh::service"],
        }
}


