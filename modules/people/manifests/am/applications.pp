class people::am::applications {
  include iterm2::dev
  include vagrant
  include java

  include alfred
  include dropbox
  include adium
  include skype
  
  include chrome
  include firefox

  include sublime_text_2
  class { 'intellij':
    edition => 'ultimate',
  }
  include mou

  include pow
  include sequel_pro
  include vmware_fusion
  include tower

}
