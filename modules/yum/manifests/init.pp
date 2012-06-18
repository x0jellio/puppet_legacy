class yum { 

if $lsbmajdistrelease == "5" {

file { "/etc/yum.repos.d/epel.repo": 
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/epel.repo",
        }
} elsif $lsbmajdistrelease == "6" {

file { "/etc/yum.repos.d/epel6.repo":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/epel6.repo",
	}
}

if $lsbmajdistrelease == "5" {

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
} elsif $lsbmajdistrelease == "6" {

file { "/etc/yum.repos.d/rpmforge.repo6":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/rpmforge.repo6",

}

file { "/etc/yum.repos.d/mirrors-rpmforge-extras6":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/mirrors-rpmforge-extras6",
        }

file { "/etc/yum.repos.d/mirrors-rpmforge6":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/mirrors-rpmforge6",

}


}

file { "/etc/yum.repos.d/vmware.repo":
ensure => present,
owner => 'root',
group => 'root',
mode => 0644,
source => "puppet:///modules/yum/vmware.repo"
        }
}
