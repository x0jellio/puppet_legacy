class puppet-f1tst::config {
include puppet-f1tst::params
  file { "/etc/puppet/puppet.conf":
    ensure => present,
    content => template("puppet-f1tst/puppet.conf.erb"),
    owner => "puppet",
    group => "puppet",
    notify => Class["puppet-f1tst::service"],
} }
