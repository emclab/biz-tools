source 'https://rubygems.org'

gem 'rails', '3.2.12'

gem 'sqlite3'
gem 'jquery-rails', '2.3.0'   #may cause error with jquery-ui for version 3.0.0 for rails 3.2.12.
gem 'database_cleaner'
gem 'simple_form'
gem 'will_paginate'

#rails engines
#gem 'authentify' , :path => '../engines/authentify'
#gem 'biz_travels' , :path => '../engines/biz_travels'
#gem 'commonx' , :path => '../engines/commonx'
gem 'biz_travels', :git => 'http://github.com/emclab/biz_travels.git'
gem 'authentify', :git => 'http://github.com/emclab/authentify.git'
gem 'commonx', :git => 'http://github.com/emclab/commonx.git'

#might no be needed
#gem "thin", "1.3.1"
#gem "eventmachine", "1.0.0.beta.4.1"
#gem 'haml-rails'
#gem 'sinatra', '~>1.2'
#gem 'sinatra-respond_to', '~>0.7.0'
#gem 'yajl-ruby', :require => 'yajl'

#gem 'ruote-kit', '2.1.11'
gem 'ruote', :git => 'http://github.com/jmettraux/ruote.git'
#gem 'ruote-kit', :git => 'http://github.com/tosch/ruote-kit.git'

group :assets do
  group :production do
    gem 'execjs'
    gem 'therubyracer', :platforms => :ruby
  end
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'bootstrap-sass', '2.3.1.0'
  #gem 'bootstrap-rails-engine'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
# Pretty printed test output
  gem "rspec-rails", ">= 2.0.0"
  #gem "cucumber-rails", ">=0.3.2"
  #gem 'webrat', ">= 0.7.2"
  gem 'capybara'
  gem 'launchy'
  gem 'factory_girl_rails' #, '~> 3.0'
end
#gem 'bcrypt-ruby'
#gem 'state_machine'
