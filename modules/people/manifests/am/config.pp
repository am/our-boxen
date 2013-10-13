class people::am::config (
  $my_homedir   = $people::am::params::my_homedir,
  $my_sourcedir = $people::am::params::my_sourcedir,
  $my_username  = $people::am::params::my_username
) {

  ###################
  # Config Settings #
  ###################

  # NOTE: Dock prefs only take effect when you restart the dock
  #property_list_key { 'Hide the dock':
  #  ensure     => present,
  #  path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
  #  key        => 'autohide',
  #  value      => true,
  #  value_type => 'boolean',
  #  notify     => Exec['Restart the Dock'],
  #}

  exec { 'Restart the Dock':
    command     => '/usr/bin/killall -HUP Dock',
    refreshonly => true,
  }

  #property_list_key { 'Lower Left Hotcorner - Screen Saver':
  #  ensure     => present,
  #  path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
  #  key        => 'wvous-bl-corner',
  #  value      => 10, 
  #  value_type => 'integer',
  #  notify     => Exec['Restart the Dock'],
  #}

  #property_list_key { 'Lower Left Hotcorner - Screen Saver - modifier':
  #  ensure     => present,
  #  path       => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
  #  key        => 'wvous-bl-modifier',
  #  value      => 0,
  #  value_type => 'integer',
  #  notify     => Exec['Restart the Dock'],
  #}

  #file { 'Dock Plist':
  #  ensure  => file,
  #  require => [
  #               Property_list_key['Hide the dock'],
  #               Property_list_key['Lower Left Hotcorner - Screen Saver'],
  #               Property_list_key['Lower Left Hotcorner - Screen Saver - modifier'],
  #             ],  
  #  path    => "${my_homedir}/Library/Preferences/com.apple.dock.plist",
  #  mode    => '0600',
  #  notify  => Exec['Restart the Dock'],
  #}

  exec { "Disable Gatekeeper":
    command => "spctl --master-disable",
    path    => "/usr/sbin/",
    user => root,
  }

  exec { "set_computer_name":
    command => "scutil --set ComputerName 'am'",
    path    => "/usr/sbin/",
    user => root,
  }

  exec { "no_close_window_animation":
    command => "defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false",
    path    => "/usr/bin/",
  }

  exec { "expand_save_panel":
    command => "defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true",
    path    => "/usr/bin/",
  }

  # Use list view in all Finder windows by default
  # Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
  exec { "finder_list_view":
    command => 'defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"',
    path    => "/usr/bin/",
  }

  # Show the ~/Library folder
  exec { "finder_show_library":
    command => 'chflags nohidden ~/Library',
    path    => "/usr/bin/",
  }

  # Don’t animate opening applications from the Dock
  exec { "dock_no_animation":
    command => 'defaults write com.apple.dock launchanim -bool false',
    path    => "/usr/bin/",
  }

  # Automatically hide and show the Dock
  exec { "dock_hide_show":
    command => 'defaults write com.apple.dock autohide -bool true',
    path    => "/usr/bin/",
  }
}
