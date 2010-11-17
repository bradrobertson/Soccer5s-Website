require 'bundler/capistrano'

set :rvm_ruby_string, 'ruby-1.9.2-p0'
set :rvm_type, :user

set :application, "soccer5s"

set :scm, :git
set :repository,  "/Users/bradrobertson/git/soccer5s"
set :deploy_via, :copy

set :copy_exclude, [".git", ".gitignore"]     # ignore all git files

set :use_sudo, false
set :user, 'app'

server "soccer5s.com", :app, :web, :db, :primary => true

task :staging do
  set :deploy_to, "/var/www/#{application}-staging"
  set :branch, "staging"
end

task :production do
  set :deploy_to, "/var/www/#{application}"
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
  
  before "deploy:restart", "deploy:migrate"
end
