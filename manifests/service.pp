class tomcat::service {
  service { 'apache2':
    ensure => 'running',
  }
}


