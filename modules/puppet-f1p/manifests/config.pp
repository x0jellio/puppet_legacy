class puppet-f1p::config {
include puppet-f1p::params
  file { "/etc/puppet/puppet.conf":
    ensure => present,
    content => template("puppet-f1p/puppet.conf.erb"),
    owner => "puppet",
    group => "puppet",
    notify => Class["puppet-f1p::service"],
} }
