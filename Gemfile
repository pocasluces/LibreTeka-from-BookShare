source 'http://rubygems.org'

ruby "2.1.5"

gem 'rails'
#gem 'actionmailer', '~> 4.2', '>= 4.2.2'
gem 'authlogic'
gem 'rails3-generators'
gem 'dynamic_form'
# gem 'nokogiri' #, '~> 1.6', '>= 1.6.7.2'
##gem 'nokogiri'
##gem 'cuecat'
gem 'isbn'
gem 'isbn_validation'
##gem 'themes_for_rails', '~> 0.5.1'
gem 'themes_for_rails'
gem 'httpclient'
gem 'json_pure'
gem 'rails_12factor'

gem 'texticle', '< 2.0'#, :require => 'texticle/rails'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

#introducimos esta gema para poder usar attr_accessible como antes de cambiar a rails 4
gem 'protected_attributes'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

# Bundle the extra gems:
# gem 'bj'
# gem 'aws-s3', :require => 'aws/s3'
gem 'haml'

# Bundle gems for the local environment. Make sure to
# put test-only gems in this group so their generators
# and rake tasks are available in development mode:
group :development, :test do
  gem 'sqlite3'
#   gem 'webrat'
end

group :production do
  gem 'pg'
end

#gem 'archive-tar-minitar'
#gem 'hoe'
#if RUBY_VERSION > '1.9' then
#  gem 'simplecov', '>= 0.8.2'
#else
#  gem 'rcov', '>= 0'
#end