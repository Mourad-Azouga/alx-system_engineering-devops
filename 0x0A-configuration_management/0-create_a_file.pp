# create a file in /tmp

file { '/tmp/school':
  content => 'I love Puppet',
  path  => '/tmp/school',
  owner => 'www-data',
  group => 'www-data',
  mode  => '0744',
}
