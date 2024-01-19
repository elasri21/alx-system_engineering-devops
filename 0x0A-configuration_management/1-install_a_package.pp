# installs flash using puppet
class {'python':
  version => 'system',
}
package {'python3-pip':
  ensure => installed,
}
exec { 'install_flash':
  command => '/usr/bin/pip3 install flash==2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}
