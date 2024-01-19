#!/usr/bin/pup
# installs flask using puppet
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install flask -v 2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}
