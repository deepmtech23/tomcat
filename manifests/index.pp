#### index for tomcat 
class tomcat::index (
  String $deploy_url_sample_path, 
  String $environment 
)
{
  file { "${deploy_url_sample_path}/index.html" :
    content => template('tomcat/index.erb'),
    #    notify => tomcat::deploy::Service['tomcat9'],
  }

}






