source 'https://rubygems.org'

gem 'rails',        '~> 5.1.6'
gem 'rails-i18n'
gem 'bcrypt'
gem 'faker'
gem 'bootstrap-sass'
gem 'will_paginate'
gem 'bootstrap-will_paginate'
gem 'puma',         '~> 3.7'
gem 'sass-rails',   '~> 5.0'
gem 'uglifier',     '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks',   '~> 5'
gem 'jbuilder',     '~> 2.5'
gem 'rounding'
gem 'activerecord-import'
gem 'rename'
gem 'omniauth', '1.9.1'
gem 'omniauth-google-oauth2'
gem 'omniauth-facebook'
gem 'simple_calendar', '~> 2.0'
gem "chartkick"
gem 'chart-js-rails', '~> 0.1.4'

group :development, :test do
  gem 'dotenv-rails'
end

group :development, :test do
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'pg', '0.20.0'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'rspec-rails', '~> 3.6'
end

group :development, :test do
  gem 'spring-commands-rspec'
end


# Windows環境ではtzinfo-dataというgemを含める必要があります
# Mac環境でもこのままでOKです
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]