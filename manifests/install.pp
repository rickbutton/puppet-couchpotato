# == Class: couchpotato::install
class couchpotato::install() inherits couchpotato::params {
  vcsrepo { $couchpotato::install_dir:
    ensure   => present,
    provider => git,
    source   => $couchpotato::repo,
    owner    => $couchpotato::user,
    group    => $couchpotato::user,
  }

  file { '/etc/init.d/couchpotato':
    ensure  => present,
    content => template('couchpotato/debian.init.erb'),
    mode    => '0755',
  }

  file { $couchpotato::data_dir:
    ensure => directory,
    mode   => '0755',
    owner  => $couchpotato::user,
    group  => $couchpotato::user,
  }
}
