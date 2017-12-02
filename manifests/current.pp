# Class: jail::current
#
#
class jail::current {
  package { 'py-iocage':
    ensure  => latest,
    before  => Service['iocage'],

  }
}