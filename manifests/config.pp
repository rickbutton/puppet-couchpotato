# == Class: couchpotato::config
class couchpotato::config {
  case $::osfamily {
    'Debian': { $config_file = '/etc/default/couchpotato' }
    'RedHat': { $config_file = '/etc/sysconfig/couchpotato' }
    default: { fail("Unsupported OS: ${::osfamily}") }
  }

  file { $config_file:
    ensure  => present,
    content => template('couchpotato/config.erb'),
    mode    => '0644',
  }
}
