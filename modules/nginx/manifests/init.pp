define site( $sitedomain = "" ) {
          include nginx
          if $sitedomain == "" {
              $vhost_domain = $name
          } else {
              $vhost_domain = $sitedomain
}

file { "/etc/nginx/sites-available/${vhost_domain}.conf":
           content => template("nginx/vhost.erb"),
           require => Package["nginx"],
}


file { "/etc/nginx/sites-enabled/${vhost_domain}.conf":
           ensure  => link,
           target  => "/etc/nginx/sites-available/${vhost_domain}.
           conf",
           require => File["/etc/nginx/sites-available/${vhost_
           domain}.conf"],
           notify  => Exec["reload nginx"],
       }
}
