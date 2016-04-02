# == Class: couchpotato::params
class couchpotato::params {
  $install_dir = '/usr/share/couchpotato'
  $data_dir    = '/var/lib/couchpotato'
  $user        = 'couchpotato'
  $user_shell  = '/bin/false'
  $user_groups = ['couchpotato', 'media']
  $manage_user = true
  $address     = '0.0.0.0'
  $port        = '5050'
  $pidfile     = '/var/run/couchpotato/couchpotato.pid'
  $repo        = 'https://github.com/RuudBurger/CouchPotatoServer.git'
}
