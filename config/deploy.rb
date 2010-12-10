require 'bundler/capistrano'

set :rvm_ruby_string, 'ruby-1.9.2-p0'
set :rvm_type, :user

set :application, "soccer5s"

set :scm, :git
set :repository,  "/Users/bradrobertson/git/soccer5s"
set :deploy_via, :copy

set :copy_exclude, [".git", ".gitignore", "public/images/src"]     # ignore all git files and src images

set :use_sudo, false
set :user, 'app'

server "soccer5s.com", :app, :web, :db, :primary => true

task :staging do
  set :rails_env, 'staging'
  set :deploy_to, "/var/www/staging.#{application}.com"
  set :branch, "staging"
end

task :production do
  set :deploy_to, "/var/www/#{application}.com"
  set :branch, "master"
end

namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
    
  task :stop do ; end
  
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{current_release}/tmp/restart.txt"
  end
  
  after "deploy:symlink", "deploy:migrate"
end
