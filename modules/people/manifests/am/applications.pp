class people::am::applications {
  include iterm2::dev
  include vagrant
  include java
  include vim
  include autojump

  include alfred
  include dropbox
  include googledrive
  include adium
  include skype
  include slate
  include twitterrific
  include teamviewer
  include transmission
  include vlc
  include rdio
  
  include chrome
  include firefox

  include sublime_text_2
  class { 'intellij':
    edition => 'ultimate',
  }
  include mou

  include sequel_pro
  include vmware_fusion
  include virtualbox
  include sourcetree

}
