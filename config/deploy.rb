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
set :user, 'mp'
set :domain, 'www.hamstermom.com'
set :port, 7853
set :linked_files, fetch(:linked_files, [])
  .push('config/database.yml', 'config/secrets.yml')
set :linked_dirs, fetch(:linked_dirs, [])
  .push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')
set :default_env, { path: "/usr/local/bin:$PATH" }
SSHKit.config.command_map[:composer] = "/usr/local/bin/composer"
set :keep_releases, 5
set :sudo_prompt, ""
set :ssh_options, {forward_agent: true}
set :local_repository, "ssh://mp@104.236.19.23/home/mp/repositories/hamstermom"
set :use_sudo, false

