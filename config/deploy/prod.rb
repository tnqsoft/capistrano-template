set :stage, :prod
set :symfony_env, "prod"

#set :branch, 'master' # your production branch
set :deploy_to, '/data/www/sym28' # path on production server

set :controllers_to_clear, ["app_*.php"]
set :composer_install_flags, '--prefer-dist --no-interaction --optimize-autoloader'

server '192.168.0.3', user: 'deploy', password: 'deploy', port: 22, roles: %w{app db web} # edit IP / Port and SSH user of your production server
SSHKit.config.command_map[:composer] = "php -d memory_limit=2G #{shared_path.join("composer.phar")}"
