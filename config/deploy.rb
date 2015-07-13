# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'hamstermom'
set :repo_url, 'git@github.com:MelizzaP/hmom-api.git'
set :branch, 'master'
set :deploy_to, '/var/www/hmom'
set :scm, :git
set :format, :pretty
set :log_level, :debug
set :pty, true
set :linked_files, fetch(:linked_files, [])
  .push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, [])
  .push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :default_env, { path: "/usr/local/bin:$PATH" }
SSHKit.config.command_map[:composer] = "/usr/local/bin/composer"
set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
