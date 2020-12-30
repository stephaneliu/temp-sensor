# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "rails", "~> 6.0.3", ">= 6.0.3.4"

gem "annotate"
gem "awesome_print"
gem "bootsnap", ">= 1.4.2", require: false
gem "clearance", "~> 2.3"
gem "haml-rails", "~> 2.0"
gem "newrelic_rpm"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development do
  gem "annotate_gem"
  gem "guard"
  gem "guard-brakeman", require: false
  gem "guard-haml_lint"
  gem "guard-livereload"
  gem "guard-process"
  gem "guard-rspec"
  gem "guard-rubocop"
  gem "guard-rubycritic"
  gem "listen", "~> 3.2"
  gem "overcommit"
  gem "prettier"
  gem "rack-livereload"
  gem "rubycritic", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "terminal-notifier"
  gem "terminal-notifier-guard"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara"
  gem "cuprite"
  gem "faker"
  gem "selenium-webdriver"
  gem "simplecov", require: false
  gem "simplecov-lcov", require: false
end

group :development, :test do
  gem "factory_bot_rails"
  gem "haml-lint"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rails-controller-testing"
  gem "rspec-rails"
  gem "rubocop-rails", require: false
  gem "rubocop-rspec", require: false
  gem "shoulda-matchers"
end
