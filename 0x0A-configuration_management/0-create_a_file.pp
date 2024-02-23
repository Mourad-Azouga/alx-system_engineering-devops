file { 'I love Puppet':
  path  => '/tmp/school',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744',
}
