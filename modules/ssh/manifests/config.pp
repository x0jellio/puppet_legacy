class ssh::config { 
ssh_authorized_key{ "root@f1tst-linops100.f1tst.rl.com":
                    ensure  => present,
		    key	    => "AAAAB3NzaC1yc2EAAAABIwAAAQEAq8MgjXk1mdqSxMuD+v54r4LETVxPm4Jm77SYNpjKPucmIQnhadUA6D32sXqSV2ieHr+hQ19n6oMyZUxLqxIM1WOInEo148lDSfGSdj3VkOfL1vQQaD8uh0E9Rk46nHd2yLXvYfnQgerR7rrEFlLjWG7Nh/AOfujHChnHc+dH5vaNLyuMZ6Gg/JQks9dc8mwpPjPIBP+kDxTkyyLUTflsIw0EyV6P2lN464nP2F0AKG8LCuE/eQiiElW0co+/w7BTaq6ZP3FLl99v/PZTBkvDyVaqpOm1+qLuNgzTqDXOCc2bQHoirNz9rj6+mzr9fUFRongaxNla5aQ/YFly8QtDfQ==",
                    type    => "ssh-rsa",
                    user    => "root"
            }
    }
