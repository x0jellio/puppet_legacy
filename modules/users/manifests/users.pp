class mysite::users {
include users::virtual
 
        @users::virtual::localuser { "bobsmith":
                uid     =>      "3202",
                gid     =>      "users",
                pass    =>      '$1$fU8c0mlIjDFYCRu0U+r1',
                sshkey  =>      "AAAAB3NzaC1yc2EAAAABIwAAAQEAtbsafzNX08oT63vnKh6LNYVpFM9U42knt+tUMvhTQaOEGVnsRH6zVQj86PLYo9HD7MCVqYAloKRN6hVvoqU++CSLO0zUYsQ4bX/+DQthtKcOwU76QLFTcXVRIIGMH++GLHGjphEhjPAJc/rPM0YswCetOm3JVGVB9x/WJFOmoT+a7r4IXaULaNTYZOPZ6fr/CvUB/w3NBvPnmLMxwPFOgBLxcQ9Tbpa5sjwi1thlXl1ZfQ8Sh++gg60odTHbAhwZOU70mA8WGOmkuETDQzunQvTK14fGDvFSHJNE5nYse8IPChbfrSMJl1PsWB+SiiGrPVQtly9BEOYi/aOokj3vfQ==",
        }
 
}
