#!/usr/bin/pup
# installs flask using puppet
class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => '3.8.10',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask==2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}
