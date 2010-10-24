require 'bundler/deployment'

set :application, "soccer5s"
set :deploy_to, "/var/www/#{application}-rails"

set :scm, :git
set :repository,  "/Users/bradrobertson/git/soccer5s"
set :branch, "master"
set :deploy_via, :copy

set :use_sudo, false
set :user, 'brad'

server "rumyagent.com", :app, :web, :db, :primary => true

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end