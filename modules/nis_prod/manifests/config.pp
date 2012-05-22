class nis_prod::config {


file { "/etc/yp.conf":

ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/nis_prod/yp.gold",
require => Class["nis_prod::install"],
        }


augeas { "network":
  context => "/files/etc/sysconfig/network/",
  changes => "set NISDOMAIN rocketprod",
#  onlyif => "match /files/etc/sysconfig/network/NISDOMAIN != rocketprod",
}

file { "/etc/nsswitch.conf":

ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/nis_prod/nsswitch.gold",
require => Class["nis_prod::install"],
notify => Class["nis_prod::service"],
	}

}
