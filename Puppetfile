# This file manages Puppet module dependencies.
#
# It works a lot like Bundler. We provide some core modules by
# default. This ensures at least the ability to construct a basic
# environment.

def github(name, version, options = nil)
  options ||= {}
  options[:repo] ||= "boxen/puppet-#{name}"
  mod name, version, :github_tarball => options[:repo]
end

# Includes many of our custom types and providers, as well as global
# config. Required.

github "boxen", "3.0.4"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "autoconf",   "1.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "2.0.1"
github "git",        "1.3.2"
github "homebrew",   "1.4.1"
github "hub",        "1.0.3"
github "inifile",    "1.0.0", :repo => "puppetlabs/puppetlabs-inifile"
github "nginx",      "1.4.2"
github "nodejs",     "3.2.10"
github "openssl",    "1.0.0"
github "repository", "2.2.0"
github "ruby",       "6.4.0"
github "stdlib",     "4.1.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"
github "xquartz",    "1.1.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",                 "1.6.0"
github "java",                "1.1.2"
github "zsh",                 "1.0.0"
github "property_list_key",   "0.1.0", :repo => "glarizza/puppet-property_list_key"
github "vim",                 "1.0.5"
github "mongodb",             "0.2.1"
github "mysql",               "1.1.5"

# apps
github "alfred",              "1.1.5"
github "chrome",              "1.1.1"
github "firefox",             "1.1.3"
github "iterm2",              "1.0.3"
github "sublime_text_3",      "1.0.1", :repo => "jozefizso/puppet-sublime_text_3"
github "intellij",            "1.2.0"
github "rubymine",            "1.0.1"
github "dropbox",             "1.1.0"
github "adium",               "1.1.0"
github "vmware_fusion",       "1.0.0"
github "virtualbox",          "1.0.2"
github "mou",                 "1.1"
github "vlc",                 "1.0.5"
github "sequel_pro",          "1.0.1"
github "skype",               "1.0.6"
github "tower",               "0.0.2", :repo => "am/puppet-tower"
github "vagrant",             "2.0.13"
github "slate",               "1.0.0"
github "twitterrific",        "0.0.1"
github "sourcetree",          "1.0.0"
github "teamviewer",          "1.0.1"
github "transmission",        "1.0.0"
github "googledrive",         "1.0.2"
github "autojump",            "1.0.0"
github "rdio",                "1.0.0"
github "archiver",            "0.0.1", :repo => "singuerinc/puppet-archiver"
github "linkinus",            "1.0.2"
