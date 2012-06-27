$mysql_password = "secret"
           file { "/usr/local/bin/backup-mysql":
               content => template("admin/backup-mysql.sh"),
               mode    => "755",
           }
