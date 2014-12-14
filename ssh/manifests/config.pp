class ssh::config {
	$config_file = $::osfamily ? {
		'Solaris' => '/etc/opt/csw/ssh/sshd_config',
		'Debian'  => '/etc/ssh/sshd_config',
		'Redhat'  => '/etc/ssh/sshd_config',
	}
	file { $config_file :
		ensure  => file,
		mode    => 0440,
		owner   => 'root',
		group   => 'root',
		source  => 'puppet:///modules/ssh/sshd_config',
		require => Class['ssh::package'],
		notify  => Class['ssh::service'],
	}
}
