class ntp {
    include ntp::init, ntp::service
}



class ntp::init { 

file { "/etc/ntp.conf":
ensure => file,
owner => 'root',
group => 'root',
mode => 00644,
source => "puppet:///modules/ntp/ntp.conf",
notify => Class["ntp::service"]
    
        }

}
