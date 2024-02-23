file { '0-create_a_file':
  ensure => 'file',
  content => 'I love Puppet',
  path  => '/tmp/school',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744',
}
