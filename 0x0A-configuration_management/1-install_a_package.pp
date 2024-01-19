#!/usr/bin/pup
# installs flask using puppet
class { 'python':
  version => 'system',
}

package { 'python3-pip':
  ensure => installed,
}

package { 'Werkzeug':
  ensure => '2.1.1',
}

package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip3',
