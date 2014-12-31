# == Class: couchpotato::install
class couchpotato::install() inherits couchpotato::params {
  user { $couchpotato::user:
    ensure => present,
    shell  => $couchpotato::user_shell,
  }

  vcsrepo { $couchpotato::install_dir:
    ensure   => present,
    provider => git,
    source   => $couchpotato::repo,
    owner    => $couchpotato::user,
    group    => $couchpotato::user,
    require  => User[$couchpotato::user]
  }

  # TODO make this work on non-Debian platforms
  if $::osfamily == 'Debian' {
    file { '/etc/init.d/couchpotato':
      ensure  => present,
      content => template('couchpotato/debian.init.erb'),
      mode    => '0755',
    }
  }

  file { $couchpotato::data_dir:
    ensure => directory,
    mode   => '0755',
    owner  => $couchpotato::user,
    group  => $couchpotato::user,
    require  => User[$couchpotato::user]
  }
}
