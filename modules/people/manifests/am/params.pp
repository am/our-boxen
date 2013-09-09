class people::am::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  $my_username  = $::luser
  $my_homedir   = "/Users/${people::am::params::my_username}"
  $my_sourcedir = $::boxen_srcdir

  $rb_global_version = '1.9.3'

  # ruby
  class { 'ruby::global':
    version => $rb_global_version
  }

  ruby::gem { "rails for ${rb_global_version}":
    gem     => 'rails',
    ruby    => $rb_global_version,
    version => '~> 3.0.20'
  }

  # mongodb
  include mongodb
}
