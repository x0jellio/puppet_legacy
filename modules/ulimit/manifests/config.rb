hostclass ":ulimit" do
       file "/etc/security/limits",
           #:ensure => file, 
           :owner  => "root",
           :group => "root",
	   :mode => "00644",
           :source => "puppet:///modules/limits/limits.conf",
end
