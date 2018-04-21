source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bcrypt", "3.1.11"
gem "bootstrap4-kaminari-views"
gem "coffee-rails", "~> 4.2"
gem "config"
gem "faker", "~> 1.8", ">= 1.8.7"
gem "figaro"
gem "font-awesome-rails"
gem "fullcalendar-rails"
gem "fuzzily"
gem "i18n-js"
gem "jbuilder", "~> 2.5"
gem "jquery-datatables-rails", "~> 3.4.0"
gem "jquery-rails"
gem "kaminari"
gem "momentjs-rails"
gem "puma", "~> 3.7"
gem "rails", "~> 5.1.5"
gem "ransack"
gem "rubocop", require: false
gem "turbolinks", "~> 5"
gem "uglifier", ">= 1.3.0"

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
