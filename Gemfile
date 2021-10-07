source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.4'

gem 'rails', '~> 6.1.4', '>= 6.1.4.1'
gem 'puma', '~> 5.0'
gem 'webpacker', '~> 5.4', '>= 5.4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.4', require: false
gem "devise", "~> 4.8"
gem "figaro", "~> 1.2"
gem "sinopac-funbiz", github: "5xTraining/sinopac-funbiz", branch: 'main'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3', '~> 1.4'
  gem "rspec-rails", "~> 5.0"
  gem "faker", "~> 2.19"
end

group :development do
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem "foreman", "~> 0.87.2"
end

group :test do
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

group :production do
  gem "pg", "~> 1.2"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
