# config valid only for current version of Capistrano
lock '3.4.0'

set :deploy_to, '/var/www/hamstermom'
set :application, 'hamstermom'
set :repo_url, 'git@github.com:MelizzaP/hmom-api.git'
set :scm, :git
set :branch, 'master'
set :format, :pretty
set :log_level, :debug
set :pty, true
set :default_env, path: '/opt/ruby/bin:$PATH'
set :keep_releases, 5
set :rvm_type, :user                     # Defaults to: :auto
set :rvm_ruby_version, '2.0.0-p247'      # Defaults to: 'default'
set :rvm_roles, [:app]

# set :linked_files, fetch(:linked_files, []).push('config/database.yml', 'config/secrets.yml')
# set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

SSHKit.config.command_map[:rake] = "bundle exec rake"

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
