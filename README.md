# Apache

This module installs and starts apache web server on Windows:

class win-apache {

  exec { 'run-win-apache.rb':
  command => '/opt/puppet/bin/ruby /etc/puppetlabs/puppet/modules/win-apache/manifests/win-apache.rb',
  }
}
