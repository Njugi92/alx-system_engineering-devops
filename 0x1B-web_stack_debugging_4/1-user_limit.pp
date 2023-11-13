# Enabling holberton user log in and open files with no errors

# Increasing hard files for holberton user
exec {'increase-hard-file-limit-for-holberton-user':
  command => "sed -i '/^holberton hard/s/5/50000/' /etc/security/limits.conf",
  path    => '/usr/local/bin/:/bin/'
}

# Increasing soft file limit for holberton user
exec {'increase-soft-file-limit-for-holberton-uiser':
  command => 'sed -i "/^holberton soft/s/4/50000/" /etc/security/limits.conf',
  path    => '/usr/local/bin/:/bin/'
}
