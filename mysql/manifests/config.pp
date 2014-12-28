class mysql::config (
        $mysql_user,
        $mysql_group,
)
{
        file { '/etc/my.cnf' :
                ensure  => file,
                source  => 'puppet:///modules/mysql/my.cnf',
                mode    => 644,
                owner   => $mysql_user,
                group   => $mysql_group,
                require => Class['mysql::install'],
        }
}
