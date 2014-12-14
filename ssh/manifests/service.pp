class ssh::service {
	$service_name = $::osfamily ? {
		'Debian'  => 'sshd',
		'Solaris' => 'csopenssh',
		'Redhat'  => 'sshd',
	}

	service { $service_name :
		ensure     => running,
		enable     => true,
		subscribe  => Class['ssh::config'],
		hasstatus  => true,
		hasrestart => true,
	}
}
