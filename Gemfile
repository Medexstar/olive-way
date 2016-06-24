source 'https://rubygems.org'

gem 'rails', '4.2.6'

gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'

gem 'turbolinks'

gem 'pg'

gem 'devise'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
group :development do
  gem 'awesome_print'
  gem 'quiet_assets'
  gem 'annotate', '~> 2.7.0'
  gem 'foreman'
  gem 'guard-rspec', require: false

  gem 'rack-mini-profiler'
end

group :development, :test do
  gem 'pry-rails'
  gem 'pry-byebug'
  gem 'dotenv-rails'
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'spring'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'faker'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
