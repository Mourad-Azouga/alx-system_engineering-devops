#Installs Flask using pip3 in Puppet
package { 'flask' :
    ensure   => '2.1.0',
    provider => 'pip3',
    }
