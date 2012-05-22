class nis::config {


file { "/etc/yp.conf":

ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/nis/yp.gold",
require => Class["nis::install"],
        }

augeas { "network":
  context => "/files/etc/sysconfig/network/",
  changes => "set NISDOMAIN f1tst",
#  onlyif => "match /files/etc/sysconfig/network/NISDOMAIN != f1tst",
}
file { "/etc/nsswitch.conf":

ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/nis/nsswitch.gold",
require => Class["nis::install"],
notify => Class["nis::service"],
	}

}
