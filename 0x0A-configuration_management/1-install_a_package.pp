# installs flash using puppet
exec { 'install_flash':
  command => '/usr/bin/pip3 install flash -v 2.1.0',
  path    => ['/usr/bin'],
  require => Package['python3-pip'],
}
