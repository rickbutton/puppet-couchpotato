# == Class: couchpotato::service
class couchpotato::service {
  if $::osfamily =~ /^Debian|RedHat/ {
    service { 'couchpotato':
      ensure     => running,
      enable     => true,
      hasstatus  => true,
      hasrestart => true,
    }
  }
}
