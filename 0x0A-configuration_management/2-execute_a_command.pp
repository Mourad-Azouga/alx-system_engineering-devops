# kills a poor command named killmenow

exec { 'pkill killmenow' :
    path    => '/bin/',
    command => 'pkill killmenow',
    }
