source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bootstrap4-kaminari-views"
gem "bcrypt", "3.1.11"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "figaro"
gem "font-awesome-rails"
gem "fuzzily"
gem "i18n-js"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.5"
gem "rubocop", require: false
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"
gem "jquery-datatables-rails", "~> 3.4.0"
gem "kaminari", "~> 1.1", ">= 1.1.1"
gem "faker", "~> 1.8", ">= 1.8.7"
gem "fullcalendar-rails"
gem "momentjs-rails"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "sass-rails", "~> 5.0"
  gem "selenium-webdriver"
  gem "sqlite3"
  gem "faker", "~> 1.8", ">= 1.8.7"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
