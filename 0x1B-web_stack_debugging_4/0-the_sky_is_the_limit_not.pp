# This increases the amount of traffic nginx server can handle

# To increase ULIMIT of the default files
exec { 'fix--for-nginx':
  # Modifying ULIMIT value
  command => '/bin/sed -i "s/15/4096/" /etc/default/nginx',
  # Pthe path for sed command
  path    => '/usr/local/bin/:/bin/',
}

# Restarting nginx
exec {'nginx-restart':
  # To start nginx service
  command => '/etc/init.d/nginx restart',
  # The path for init.d script
  path    => '/etc/init.d/',
}
