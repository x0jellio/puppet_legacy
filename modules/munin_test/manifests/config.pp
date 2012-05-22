class munin_test::config {
file {"/etc/munin/munin-node.conf":
ensure => present,
content => template("munin_test/munin-node.conf.erb"),
owner => 'munin',
group => 'munin',
mode => 0755,
#source => "puppet:///modules/munin_test/munin-node.conf",
require => Class["munin_test::install"],
notify => Class["munin_test::service"],
        }
}
