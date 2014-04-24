class people::am::params {
  # $::luser and $::boxen_srcdir come from Boxen's custom facts
  $my_username  = $::luser
  $my_homedir   = "/Users/${people::am::params::my_username}"
  $my_sourcedir = $::boxen_srcdir

  # mongodb
  # include mongodb
}
