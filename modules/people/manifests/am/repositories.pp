class people::am::repositories (
  $my_sourcedir = $people::am::params::my_sourcedir,
  $my_homedir   = $people::am::params::my_homedir,
  $my_username  = $people::am::params::my_username
) {

  notify { 'class people::am::repositories declared': }

  ###############################
  # Git config and repositories #
  ###############################

  git::config::global{ 'user.name':
    value => 'Antonio Miranda',
  }

  git::config::global { 'alias.l':
    value => "log --graph --pretty=format':%C(yellow)%h%Cblue%d%Creset %s %C(white) %an, %ar%Creset'",  }

  git::config::global { 'alias.review':
    value => 'log -p --reverse -M -C -C --patience --no-prefix',
  }

  git::config::global{ 'user.email':
    value => 'antsmiranda@gmail.com',
  }

  git::config::global{ 'core.editor':
    value => 'vim',
  }

  git::config::global{ 'color.ui':
    value => 'true',
  }

  git::config::global{ 'color.status':
    value => 'auto',
  }

  git::config::global{ 'color.branch':
    value => 'auto',
  }

  git::config::global{ 'color.diff':
    value => 'auto',
  }

  git::config::global { 'alias.ll':
    value => 'log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%cn]" --decorate --numstat',
  }

  git::config::global { 'alias.dlc':
    value => 'diff --cached HEAD^',
  }

  # oh-my-zsh
  repository { "${my_sourcedir}/oh-my-zsh":
    source  => 'robbyrussell/oh-my-zsh',
    provider => 'git';
  }

  file { "/Users/${my_username}/.oh-my-zsh":
    ensure  => link,
    target  => "${my_sourcedir}/oh-my-zsh",
    require => Repository["${my_sourcedir}/oh-my-zsh"],
  }

  # vim theme - chriskempson/tomorrow-theme
  repository { "${my_sourcedir}/tomorrow-theme":
    source  => 'chriskempson/tomorrow-theme',
    provider => 'git';
  }

  #vim Vundle
  repository { "${my_sourcedir}/vundle":
    source  => 'gmarik/vundle',
    provider => 'git';
  }

  file { "/Users/${my_username}/.vim/bundle/vundle":
    ensure  => link,
    target  => "${my_sourcedir}/vundle",
    require => Repository["${my_sourcedir}/vundle"],
  }

  # create colors folder
  file { [
    "/Users/${my_username}/.vim", 
    "/Users/${my_username}/.vim/colors",
    "/Users/${my_username}/.vim/bundle"]:
    ensure => "directory",
  }

  file { "/Users/${my_username}/.vim/colors/Tomorrow-Night.vim":
    ensure  => link,
    target  => "${my_sourcedir}/tomorrow-theme/vim/colors/Tomorrow-Night.vim",
    require => Repository["${my_sourcedir}/tomorrow-theme"],
  }

  # dotfiles
  repository { "${my_sourcedir}/dotfiles":
    source  => 'am/dotfiles',
    provider => 'git';  
  }

  file { "/Users/${my_username}/.zshrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.zshrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.vimrc":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.vimrc",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.oh-my-zsh/custom":
    ensure  => link,
    force   => true,
    replace => true,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.oh-my-zsh",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.oh-my-zsh/themes/sunrise-am.zsh-theme":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/sunrise-am.zsh-theme",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.slate":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.slate",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.slate.js":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.slate.js",
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.bundle":
    ensure => directory,
    require => Repository["${my_sourcedir}/dotfiles"],
  }

  file { "/Users/${my_username}/.bundle/config":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/.bundle/config",
    require => File["/Users/${my_username}/.bundle"],
  }

  file { "/Users/${my_username}/.tmux.conf":
    ensure  => link,
    mode    => '0644',
    target  => "${my_sourcedir}/dotfiles/tmux.conf",
    require => Repository["${my_sourcedir}/dotfiles"],
  }
}
