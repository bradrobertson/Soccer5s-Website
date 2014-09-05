source 'http://rubygems.org'

ruby '1.9.3'

gem 'refinerycms'
gem 'refinerycms-inquiries'
gem 'refinerycms-blog'
gem 'refinerycms-page-images'

gem "jquery-rails"    # should shouldn't be needed, refinery depends on it... but if F's up for some reason without it
gem 'simple_form'
gem 'pg', '~> 0.14'

group :development, :test do
  gem 'rspec-rails', '~> 2.6.1'
  gem 'database_cleaner', '0.5.2'
  gem 'factory_girl'
  gem 'sqlite3'
  gem 'pry'
  gem 'aws-sdk'
end

group :production, :staging do
  gem 'newrelic_rpm', '~> 3.5'
  gem 'unicorn', '~> 4.6'
  gem 'fog'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'compass-rails'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end
