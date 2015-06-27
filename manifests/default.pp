exec { "apt-get update" :
	path => "/usr/bin",
}
package { "apache2" :
	ensure => present,
	require => Exec["apt-get update"],
}
service { "apache2":
	ensure => "running",
	requre => Package["apache2"],
}