# Class: jail::legacy
#
#
class jail::legacy {
  package { 'iocage':
    ensure  => installed,
    source  => '/tmp/iocage-1.7.6.txz',
    require => File['/tmp/iocage-1.7.6.txz'],
    before  => Service['iocage'],
  }

  file { '/tmp/iocage-1.7.6.txz':
    ensure => file,
    source => 'puppet:///modules/jail/iocage-1.7.6.txz',
  }
}