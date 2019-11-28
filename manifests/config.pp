### config 
class tomcat::config {
  file { '/etc/apache2/apache2.conf': 
  source => 'puppet:///modules/tomcat/tomcat.conf', 
  mode   => '664', 
  notify => Service['apache2'],
  }
}



