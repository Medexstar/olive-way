source 'https://rubygems.org'

gem 'rails', '4.2.6'

gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'font-awesome-rails'

gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-turbolinks'
gem 'turbolinks'

gem 'pg'

gem 'activeadmin', github: 'activeadmin'
gem 'devise'

gem 'paperclip', '~> 4.3'
gem 'aws-sdk',   '~> 1.6'

gem 'stripe'

gem 'airbrake'

gem 'sitemap_generator'

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
  gem 'rspec-rails'
  gem 'dotenv-rails'
  gem 'factory_girl_rails'
  gem 'spring'
end

group :test do
  gem 'shoulda-matchers'
  gem 'capybara'
  gem 'faker'
end

group :production do
  gem 'rails_12factor'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
