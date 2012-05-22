file { "${homefs}/${username}/.bash_profile":
              ensure  => present,
              owner   => $home_owner,
              group   => $home_group,
              mode    => 640,
              require => File["${homefs}/${username}"],
              source  => [
                "puppet:///modules/users/${username}/.bash_profile",
                "puppet:///modules/users/defaultskel/.bash_profile",
              ],
