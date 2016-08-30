lock '3.4.0'

set :application, 'sym28'
set :scm, :copy
#set :repo_url, 'git@bitbucket.org:nntuan/sym28.git'

#For Symfony 3
#set :linked_files, %w{app/config/parameters.yml}
set :linked_dirs, %w{var/logs vendor web/uploads web/media}

#For Symfony 2
#set :linked_dirs, %w{app/logs vendor}

set :format, :pretty
set :log_level, :debug
set :keep_releases, 5

after 'deploy:starting', 'composer:install_executable'
#after 'deploy:updated', 'npm:install'   # remove it if you don't use npm
#after 'deploy:updated', 'bower:install' # remove it if you don't use bower
after 'deploy:updated', 'symfony:assets:install'
#after 'deploy:updated', 'symfony:assetic:dump'
