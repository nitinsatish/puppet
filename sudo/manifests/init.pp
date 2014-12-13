class sudo {

package { 'sudo' :
ensure => present,
}

if $::osfamily == 'Debain' {
package { 'sudo-ldap' :
ensure => present,
require => Package['sudo'],
}
}
file { '/etc/sudoers' :
ensure => file,
mode => 0440,
owner => 'root',
group => 'root',
require => Package['sudo'],
source => "puppet://$::server/modules/sudo/sudoers"
}
}

