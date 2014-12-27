# == Class: couchpotato::service
class couchpotato::service {
  service { 'couchpotato':
    ensure     => running,
    enable     => true,
    hasstatus  => true,
    hasrestart => true,
  }
}
