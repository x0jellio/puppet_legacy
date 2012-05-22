class limits { 

file { "/etc/security/limits.conf":
ensure => file,
owner => 'root',
group => 'root',
mode => 00644,
source => "puppet:///modules/limits/limits.conf"
        }
}
