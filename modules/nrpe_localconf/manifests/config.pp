class nrpe_localconf::config {


	##### This file needs to be moved to the
	##### nrpe_base module, but since that
	##### module affects all hosts (both 
	##### testing and prod, additional 
	##### validation of the file is needed.
	##### When it's clear that it works 
	##### everywhere,this stanza can be moved.
	file { "/etc/nagios/nrpe.cfg":
		ensure	=> present,
		owner	=> "root",
		group	=> "root",
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/nrpe.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/localconf.d":
   		ensure => "directory",
		owner  => "nagios",
		group  => "nagios",
		mode   => 750,
	}

	file { "/etc/nagios/configs-available":
		ensure => "directory",
		owner  =>  "nagios",
		group  =>  "nagios",
		mode   => 750,
	}
	
	file { "/etc/nagios/configs-available/disks.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/disks.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/hadoop.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/hadoop.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/system.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/system.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/system-had.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/system-had.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/mgmt.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/mgmt.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/http-frontend.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/http-frontend.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	#### These next two config files are not included in any 
	#### existing config, but did show up on many of the machines,
	#### so I put them here, anyway.
	#### (check_puppet_run.cfg and check_mcollective.cfg)
	file { "/etc/nagios/configs-available/check_puppet_run.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/check_puppet_run.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

	file { "/etc/nagios/configs-available/check_mcollective.cfg":
		ensure 	=> present,
		owner	=> 'nagios',
		group	=> 'nagios',
		mode	=> 0640,
		source	=> "puppet:///modules/nrpe_localconf/check_mcollective.cfg",
        	require => Class['nrpe_basic::packages'],
        	notify  => Class['nrpe_basic::service'],
	}

}
