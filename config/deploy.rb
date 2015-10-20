# config valid only for current version of Capistrano
lock '3.4.0'

set :application, 'hamstermom'
set :repo_url, 'git@github.com:MelizzaP/hmom-api.git'
set :branch, 'master'
set :deploy_to, '/var/www/hmom'
