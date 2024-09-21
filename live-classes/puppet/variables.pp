# we define it will $varibale name

node default{
  $text= "My Nginx Package is installed"  
  package{'nginx':
    ensure => installed,
  }
  file{'/tmp/status.txt':
    content => $text,
    mode    => '0644',
  }
}