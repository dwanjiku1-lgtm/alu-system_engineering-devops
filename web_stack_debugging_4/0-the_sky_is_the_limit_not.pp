# Increase the ULIMIT file descriptor limit for Nginx to handle high concurrency benchmarking

exec { 'fix--for-nginx':
  command => 'sed -i "s/-n 15/-n 4096/g" /etc/default/nginx; service nginx restart',
  path    => ['/bin', '/usr/bin', '/usr/sbin'],
}
