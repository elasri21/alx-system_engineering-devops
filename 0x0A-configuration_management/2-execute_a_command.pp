# kills a process
exec { 'killmenow_process':
  command     => '/usr/bin/pkill killmenow',
  provider    => 'shell',
  refreshonly => true,
}
