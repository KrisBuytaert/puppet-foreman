class foreman::passenger {

  file{"foreman_vhost":
    path => $lsbdistid ? {
      default => "/etc/httpd/conf.d/foreman.conf",
      "Ubuntu" => "/etc/apache2/conf.d/foreman.conf"
    },
    content => template("foreman/foreman-vhost.conf.erb"),
    #require => [Package['httpd'],File['/etc/httpd/conf.d/passenger.conf']],
    require => [Package['httpd'],Package['mod_passenger'],Exec['generatePuppetKey']],
    notify  => Exec["restart-httpd"],
    mode    => 644,
    ensure  => "present",
  }


}
