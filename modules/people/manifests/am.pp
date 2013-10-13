class people::am {

  include people::am::params
  include people::am::applications
  include people::am::repositories
  # https://github.com/glarizza/puppet-property_list_key/issues/12
  # include people::am::config
  include people::am::vm
  include people::am::projects

  include zsh
  
  notify { 'class people::am declared': }

}
