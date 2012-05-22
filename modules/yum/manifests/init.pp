class yum { 
file { "/etc/yum.repos.d/epel.repo": 
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/epel.repo",
        }

file { "/etc/yum.repos.d/mirrors-rpmforge-extras":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/mirrors-rpmforge-extras",
        }

file { "/etc/yum.repos.d/mirrors-rpmforge":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/mirrors-rpmforge",

}


file { "/etc/yum.repos.d/rpmforge.repo":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/rpmforge.repo",

}


file { "/etc/yum.repos.d/vmware.repo":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/vmware.repo"
        }
}
