# == Class: couchpotato::config
class couchpotato::config {
  # TODO make this work on non-Debian platforms
  if $::osfamily == 'Debian' {
    file { '/etc/default/couchpotato':
      ensure  => present,
      content => template('couchpotato/debian.default.erb'),
      mode    => '0644',
    }
  }
}
