class openldap::install { 

package { "openldap-clients":
ensure => present,
	}

package { "nss_ldap":
ensure => present,
	}

}
