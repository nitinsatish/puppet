class mysql::install (
$mysql_user,
$mysql_group,
){
        package { 'mysql-client' :
                ensure => present,
        }
        user { $mysql_user :
                ensure  => present,
                gid     => $mysql_group,
                shell   => '/bin/false',
                require => Group[$mysql_group],
        }
        group { $mysql_group :
                ensure => present,
        }
}

