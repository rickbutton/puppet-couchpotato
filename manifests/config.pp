# == Class: couchpotato::config
class couchpotato::config {
  case $::osfamily {
    'Debian': {
      file { '/etc/default/couchpotato':
        ensure  => present,
        content => template('couchpotato/debian.default.erb'),
        mode    => '0644',
      }
    }
    default: {
    }
  }
}
