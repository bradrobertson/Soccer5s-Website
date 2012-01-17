source 'http://rubygems.org'

gem 'rails', '~> 3.0.10'

group :development, :test do
	gem 'rspec-rails', '~> 2.6.1'
	gem 'database_cleaner', '0.5.2'
	gem 'factory_girl'	
	gem 'sqlite3-ruby', :require => 'sqlite3'
end

gem "simple_form"
gem 'jammit', '0.5.4'

group :deployment do
	gem 'capistrano'
end

group :production do
	gem 'pg', '~> 0.12.0'
  gem 'newrelic_rpm', '~> 3.3.0'
end

gem 'devise', '~> 1.1.3'