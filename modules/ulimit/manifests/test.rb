

hostclass ":ulimit" do
       file "/etc/security/limits",
           :ensure => file, 
           :owner  => "root",
           :group => "root",
	   :mode => "00644",
           :source => "puppet:///modules/limits/limits.conf",
end



hostclass "admin::exim" do
       package "exim4", :ensure => :installed
       service "exim4",
           :ensure  => :running,
           :require => "Package[exim4]"
       file "/etc/exim4/exim4.conf",
           :content => template(["admin/exim4.conf"]),
           :notify  => "Service[exim4]",
           :require => "Package[exim4]"
end



lass admin::exim {
       package { "exim4": ensure => installed }
       service { "exim4":
           ensure  => running,
           require => Package["exim4"],
}
       file { "/etc/exim4/exim4.conf":
           content => template("admin/exim4.conf"),
           notify  => Service["exim4"],
           require => Package["exim4"],
} }



