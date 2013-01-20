source 'http://rubygems.org'

gem 'refinerycms'
gem 'refinerycms-inquiries'
gem 'refinerycms-blog'
gem 'refinerycms-page-images'

gem 'fog'

gem "jquery-rails"    # should shouldn't be needed, refinery depends on it... but if F's up for some reason without it
gem 'simple_form'

group :development, :test do
  gem 'rspec-rails', '~> 2.6.1'
  gem 'database_cleaner', '0.5.2'
  gem 'factory_girl'
  gem 'sqlite3'
  gem 'pry'
end

group :production do
  gem 'pg', '~> 0.13'
  gem 'newrelic_rpm', '~> 3.4'
  gem 'thin', '~> 1.3'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platform => :ruby

  gem 'uglifier', '>= 1.0.3'
end
