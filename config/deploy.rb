require 'bundler/deployment'

set :application, "soccer5s"
set :deploy_to, "/var/www/#{application}"

set :scm, :git
set :repository,  "/Users/bradrobertson/git/soccer5s"
set :branch, "master"
set :deploy_via, :copy

set :copy_exclude, [".git", ".gitignore"]     # ignore all git files

set :use_sudo, false
set :user, 'app'

server "bcomsolutions.ca", :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
  
  after "deploy:symlink", "db:link"
  after "deploy", "deploy:migrate"
end

namespace :db do
  desc "Link sqlite db to shared file"
  task :link, :roles => :db do
    run "ln -s #{File.join(shared_path,'db','production.sqlite3')} #{File.join(current_path,'db')}"
  end
end