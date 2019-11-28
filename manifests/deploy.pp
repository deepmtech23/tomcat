#### deploying the war file in the tomcat9 
class tomcat::deploy ( 
  String $tomcat_url,
  String $tomcat_path, 
  String $tomcat_user, 
  String $tomcat_group, 
){
  file { "${tomcat_path}/sample.war" :
    source => $tomcat_url,
    owner  => $tomcat_user,
    group  => $tomcat_group,
    notify => Service['tomcat9'],
  }

  service { "tomcat9" :
      ensure      => "running",
      enable    => "true",
  }

}






