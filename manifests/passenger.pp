class foreman::passenger {

  file{"foreman_vhost":
    path => $lsbdistid ? {
      default => "/etc/httpd/conf.d/foreman.conf",
      "Ubuntu" => "/etc/apache2/conf.d/foreman.conf"
    },
    content => template("foreman/foreman-vhost.conf.erb"),
    mode => 644,
    ensure => "present",
  }


}
