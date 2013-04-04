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

github "boxen", "2.0.0"

# Core modules for a basic development environment. You can replace
# some/most of these if you want, but it's not recommended.

github "repository", "2.0.0"
github "dnsmasq",    "1.0.0"
github "gcc",        "1.0.0"
github "git",        "1.0.0"
github "homebrew",   "1.1.2"
github "hub",        "1.0.0"
github "inifile",    "0.9.0", :repo => "cprice-puppet/puppetlabs-inifile"
github "nginx",      "1.1.0"
github "nodejs",     "1.1.0"
github "nvm",        "1.0.0"
github "ruby",       "3.1.0"
github "stdlib",     "3.0.0", :repo => "puppetlabs/puppetlabs-stdlib"
github "sudo",       "1.0.0"

# Optional/custom modules. There are tons available at
# https://github.com/boxen.

github "osx",                 "1.0.0"
github "java",                "1.0.6"
github "zsh",                 "1.0.0"
github "property_list_key",   "0.1.0", :repo => "glarizza/puppet-property_list_key"

# apps
github "alfred",          "1.0.1b", :repo => "pacso/puppet-alfred"
github "chrome",          "1.1.0"
github "firefox",         "1.0.5"
github "iterm2",          "1.0.2"
github "sublime_text_2",  "1.1.0"
github "intellij",        "1.1.2"
github "rubymine",        "1.0.1"
github "dropbox",         "1.1.0"
github "adium",           "1.0.1"
github "vmware_fusion",   "1.0.0"
github "divvy",           "1.0.1"
github "mou",             "1.0.0"
github "vlc",             "1.0.0"
github "pow",             "0.1.0", :repo => "redbubble/puppet-pow"
github "sequel_pro",      "1.0.0"
github "skype",           "1.0.2"
github "tower",           "0.0.1", :repo => "am/puppet-tower"
github "vagrant",         "2.0.5"
github "slate",           "1.0.0"
