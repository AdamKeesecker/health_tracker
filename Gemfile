ruby '2.1.2'
source 'https://rubygems.org'

#ruby-gemset=health_tracker
gem 'haml'
gem 'foundation-rails', '< 5.4'
gem 'devise'
gem 'simple_form'
gem 'omniauth-fitbit'
gem 'httparty', group: :development
gem 'figaro'

gem 'rails', '4.1.5'
gem 'pg'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0',          group: :doc
gem 'spring',        group: :development

group :development, :test do
  gem 'rspec-rails'
  gem 'letter_opener'
  gem 'pry-rails'
  gem 'launchy'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'codeclimate-test-reporter', require: false
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'shoulda'
end

group :production do
  gem 'rails_12factor'
end
