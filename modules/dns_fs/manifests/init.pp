class dns_fs{ 

file { "/etc/resolv.conf":
ensure => file,
owner => 'root',
group => 'root',
mode => 00644,
source => "puppet:///modules/dns_fs/resolv.conf",
    
        }

}
