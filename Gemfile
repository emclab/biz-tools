source 'http://rubygems.org'


gem 'rails', '3.2.11'
gem 'sqlite3'  
gem 'database_cleaner'
gem 'jquery-rails'
gem 'simple_form'
gem 'will_paginate', '~> 3.0'
gem 'rufus-scheduler'
gem 'gon'

#rails engines 
#gem 'authentify' , :path => '../authentify'
#gem 'biz_travels' , :path => '../biz_travels'

gem 'biz_travels', :git => 'http://github.com/emclab/biz_travels.git'
gem 'authentify', :git => 'http://github.com/emclab/authentify.git'


  
# Gemfile
#group :production do
#  gem 'mysql2', '>=0.2.6'
#end

#   Gems used only for assets and not required
# in production environments by default.

group :assets do
  group :production do
    gem 'execjs'
    gem 'therubyracer', :platforms => :ruby
  end
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  #gem 'execjs'
  #gem 'therubyracer', :platforms => :ruby
  #gem 'twitter-bootstrap-rails'
  gem 'bootstrap-sass', '~> 2.0.4.0'
end

group :development, :test do
# Pretty printed test output  
  gem "rspec-rails", ">= 2.0.0"
  #gem "cucumber-rails", ">=0.3.2"
  gem 'webrat', ">= 0.7.2"
  gem 'factory_girl_rails', '~> 3.0'
end

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :test do
  # Pretty printed test output
  gem 'turn', '0.8.2', :require => false
end

gem "thin", "1.3.1"
gem "eventmachine", "1.0.0.beta.4.1"
gem 'haml-rails'
gem 'sinatra', '~>1.2'
gem 'sinatra-respond_to', '~>0.7.0'
gem 'yajl-ruby', :require => 'yajl'

#gem 'ruote-kit', '2.1.11'
gem 'ruote', :git => 'http://github.com/jmettraux/ruote.git'
gem 'ruote-kit', :git => 'http://github.com/tosch/ruote-kit.git'


gem 'bcrypt-ruby'
  # for app/models/user.rb

gem 'state_machine'
