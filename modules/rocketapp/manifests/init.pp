class rocketapp  { 

file { "/opt/":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
recurse => true,
mode => 00755
        }

file { "/var/lib/redis":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
recurse => true,
mode => 00644
        }

file { "/database/cassandra":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
mode => 00644,
recurse => true
        }

file {"/var/log/cassandra":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
mode => 00644,
recurse => true
        }


file {"/var/log/redirectListener":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
mode => 00644,
recurse => true
}

file {"/var/log/RCALMessageListener":
ensure => directory,
owner => 'rocketapp',
group => 'rocketapp',
mode => 00644,
recurse => true
}
	}
