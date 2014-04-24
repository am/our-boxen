# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

# Shortcut for a module from GitHub's boxen organization
def github(name, *args)
  options ||= if args.last.is_a? Hash
    args.last
  else
    {}
  end

  if path = options.delete(:path)
    mod name, :path => path
  else
    version = args.first
    options[:repo] ||= "boxen/puppet-#{name}"
    mod name, version, :github_tarball => options[:repo]
  end
end

# Shortcut for a module under development
def dev(name, *args)
  mod name, :path => "#{ENV['HOME']}/src/boxen/puppet-#{name}"
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.4.2"

# Support for default hiera data in modules

github "module-data", "0.0.3", :repo => "ripienaar/puppet-module-data"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "dnsmasq",     "1.0.1"
github "foreman",     "1.2.0"
github "gcc",         "2.0.100"
github "git",         "2.3.0"
github "homebrew",    "1.6.2"
github "hub",         "1.3.0"
github "inifile",     "1.0.3", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",       "1.4.3"
github "nodejs",      "3.7.0"
github "openssl",     "1.0.0"
github "phantomjs",   "2.3.0"
github "pkgconfig",   "1.0.0"
github "repository",  "2.3.0"
github "ruby",        "7.3.0"
github "stdlib",      "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",        "1.0.0"
github "xquartz",     "1.1.1"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",                 "2.2.2"
github "zsh",                 "1.0.0"
# https://github.com/glarizza/puppet-property_list_key/issues/12
# github "property_list_key",   "0.1.0", :repo => "glarizza/puppet-property_list_key"
github "vim",                 "1.0.5"
github "mongodb",             "1.3.0"
# github "mysql",               "1.99.15"

# apps
github "alfred",              "1.1.8"
github "chrome",              "1.1.2"
github "firefox",             "1.1.9"
github "iterm2",              "1.0.9"
github "sublime_text_3",      "1.0.2", :repo => "jozefizso/puppet-sublime_text_3"
github "intellij",            "1.2.0"
github "rubymine",            "1.0.1"
github "dropbox",             "1.2.0"
github "adium",               "1.3.0"
github "vmware_fusion",       "1.1.0"
github "virtualbox",          "1.0.11"
github "mou",                 "1.1"
github "vlc",                 "1.1.0"
github "sequel_pro",          "1.0.1"
github "skype",               "1.0.8"
github "vagrant",             "3.0.7"
github "slate",               "1.0.0"
github "twitterrific",        "0.0.1"
github "sourcetree",          "1.0.0"
github "teamviewer",          "1.0.1"
github "transmission",        "1.1.0"
github "googledrive",         "1.0.2"
github "autojump",            "1.0.0"
github "archiver",            "0.0.1", :repo => "singuerinc/puppet-archiver"
github "arq",                 "1.0.0"
