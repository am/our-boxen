class people::am::applications {

  # $nodejs_v = 'v0.10.12'
  #
  # class {
  #   'nodejs::global': version => $nodejs_v
  # }
  # nodejs::module {
  #   'bower': node_version => $nodejs_v
  # }
  # nodejs::module {
  #   'docpad': node_version => $nodejs_v
  # }
  # nodejs::module {
  #   'grunt-cli': node_version => $nodejs_v
  # }

  $homebrew_packages = [
    'tree',
    'tmux',
    'imagemagick',
    'reattach-to-user-namespace'
  ]

  ## Declare all Homebrew packages at once
  package { $homebrew_packages: }

  include iterm2::dev
  include vagrant
  # https://github.com/boxen/puppet-vim/issues/16
  # include vim
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

  include chrome
  include firefox

  include sublime_text_3
  class { 'intellij': edition => 'ultimate', }
  include mou

  include sequel_pro
  include vmware_fusion
  include virtualbox
  include sourcetree
  include archiver
  include arq
}
