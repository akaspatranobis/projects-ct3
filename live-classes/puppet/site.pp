node default{
  package{'nginx':
    ensure => installed,
  }
}

------

node 'webserver.example.com' {
  package { 'nginx':
    ensure => installed,
  }
}  