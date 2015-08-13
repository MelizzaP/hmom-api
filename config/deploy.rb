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
  namespace :assets do
    task [:precompile, roles: :web] do
      from = source.next_revision(current_revision)
      if capture("cd #{latest_release} && #{source.local.log(from)} vendor/assets/ lib/assets/ app/assets/ | wc -l").to_i > 0
        run_locally("rake assets:clean && rake assets:precompile")
        run_locally "cd public && tar -jcf assets.tar.bz2 assets"
        top.upload "public/assets.tar.bz2", "#{shared_path}", :via => :scp
        run "cd #{shared_path} && tar -jxf assets.tar.bz2 && rm assets.tar.bz2"
        run_locally "rm public/assets.tar.bz2"
        run_locally("rake assets:clean")
      else
        logger.info "Skipping asset precompilation because there were no asset changes"
      end
    end
  end
end
