class puppet-f1p::service {
  service { "puppet":
    ensure => running,
    hasstatus => true,
    hasrestart => true,
    enable => true,
} }
