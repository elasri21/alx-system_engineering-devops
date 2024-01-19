# kills a process
exec {'pkill':
  command  => 'pkillmenow',
  provider => 'shell',
}
