class ssh::package {
	$package_name = $::osfamily ? {
		'Solaris' => 'openssh',
		'Debian'  => 'openssh-server',
		'Redhat'  => 'openssh-server',
		default   => 'openssh',
	}
	package { $package_name :
		ensure => 'present',
	}
}
