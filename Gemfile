source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'dotenv-rails', groups: [:development, :test]
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Ransack for searching/filtering indexes
gem 'ransack'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Added at 2018-05-17 14:55:39 +1000 by ryan2:
gem "devise", "~> 4.4"

# Added at 2018-05-21 20:25:51 +1000 by ryan2:
gem "geocoder", "~> 1.4"

# Added at 2018-05-23 20:21:42 +1000 by ryan2:
gem "rolify", "~> 5.2"

# Added at 2018-05-24 20:07:58 +1000 by ryan2:
gem "carrierwave", "~> 1.2"

# Added at 2018-05-24 20:09:25 +1000 by ryan2:
gem "cloudinary", "~> 1.9"

# Added at 2018-05-26 15:01:25 +1000 by ryan2:
gem "stripe", "~> 3.15"

# Added at 2018-05-29 20:26:09 +1000 by ryan2:
gem "mailboxer", "~> 0.15.1"

# Added at 2018-06-08 14:27:11 +1000 by ryan2:
gem "chosen-rails", "~> 1.8"

gem "pry", "~> 0.11.3"