class postfix::service {
	service { 'postfix' :
		ensure     => running,
		enable    => true,
		hasstatus  => true,
		hasrestart => true,
		subscribe  => Class['postfix::config'],
	}
}
