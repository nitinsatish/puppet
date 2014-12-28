class postfix::config {
	File {
		owner => 'postfix',
		group => 'postfix',
		mode  => '0644',
	}

	file { '/etc/postfix/main.cf' :
		ensure  => file,
		content => template('postfix/main.cf.erb'),
		require => Class['postfix::install'],
	}
}
