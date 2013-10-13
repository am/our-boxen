class people::am {

  include people::am::params
  include people::am::applications
  include people::am::repositories
  include people::am::config
  include people::am::vm
  include people::am::projects

  include zsh
  
  notify { 'class people::am declared': }

}
