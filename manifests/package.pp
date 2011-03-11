class foreman::package {

  yumrepo { "foreman":
    descr => "Foreman stable repository",
    baseurl => "http://yum.theforeman.org/stable",
    gpgcheck => "0",
    enabled => "1"
  }

  yumrepo { 'foreman-testing':
    enabled => '0',
    gpgcheck => '0',
    descr => 'Foreman testing repository',
    baseurl => 'http://yum.theforeman.org/test'
  }

  package{"foreman":
    ensure => installed,
    require => Yumrepo["foreman"],
    notify => Service["foreman"],
  }

}
