
class openldap::config {

file { "/etc/openldap": ensure => directory }

file { "/etc/openldap/ldap.conf":

ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/openldap/ldap.gold",
require => Class["openldap::install"],
        }

file {"/etc/ldap.conf": ensure => link , target => "/etc/openldap/ldap.conf"}



file { "/etc/pam.d/system-auth-ac":

ensure =>present,
owner => 'root',
group => 'root',
mode  => 0644,
source => "puppet:///modules/openldap/system-auth.gold",

	}

file { "/etc/nsswitch.conf":

ensure =>present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/openldap/nsswitch.gold"

	}

}
