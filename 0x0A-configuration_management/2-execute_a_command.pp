# kills a process
exec { 'killmenow_process':
  command     => '/usr/bin/pkill killmenow',
  refreshonly => true,
}
