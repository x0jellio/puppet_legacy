class munin_prod::config {
file {"/etc/munin/munin-node.conf":
ensure => present,
content => template("munin_prod/munin-node.conf.erb"),
owner => 'munin',
group => 'munin',
mode => 0755,
#source => "puppet:///modules/munin_prod/munin-node.conf",
require => Class["munin_prod::install"],
notify => Class["munin_prod::service"],
        }
}
