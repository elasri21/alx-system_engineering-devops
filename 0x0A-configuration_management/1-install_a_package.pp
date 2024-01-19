#!/usr/bin/pup
# installs flask using puppet
class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => installed,
}

package { 'build-essential':
  ensure => installed,
}

exec { 'install_flask':
  command => '/usr/bin/pip3 install Flask==2.1.0',
  path    => '/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin',
  require => Package['python3-pip', 'build-essential'],
}
