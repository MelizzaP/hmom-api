require 'bundler/capistrano'
require 'capistrano-db-tasks'

set :db_local_clean, true
set :db_remote_clean, true
set :assets_dir, %w(public/assets public/att)
set :local_assets_dir, %w(public/assets public/att)
set :application, "Hamstermom"
set :repository,  "git@github.com:MelizzaP/hmom-api.git"
set :group, "deployers"
set :scm, :git
set :scm_passphrase, ""
set :branch, "master"
set :user, "melizza"
set :use_sudo, false
set :rails_env, "production"
set :deploy_via, :copy
set :ssh_options, { :forward_agent => true, :port => 7853 }
set :keep_releases, 5
default_run_options[:pty] = true
server "hamstermom.com", :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end

  desc "Symlink shared config files"
  task :symlink_config_files do
    run "#{ sudo } ln -s #{ deploy_to }/shared/config/database.yml #{ current_path }/config/database.yml"
  end

  # NOTE: I don't use this anymore, but this is how I used to do it.
  desc "Precompile assets after deploy"
  task :precompile_assets do
    run <<-CMD
      cd #{ current_path } &&
      #{ sudo } bundle exec rake assets:precompile RAILS_ENV=#{ rails_env }
    CMD
  end

  invoke 'unicorn:restart'

  desc "Restart applicaiton"
  task :restart do
    run "#{ try_sudo } touch #{ File.join(current_path, 'tmp', 'restart.txt') }"
  end
end

after "deploy", "deploy:symlink_config_files"
after "deploy", "deploy:restart"
after "deploy", "deploy:cleanup"
