# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.6"

gem "rails", "~> 6.0.3", ">= 6.0.3.4"

gem "awesome_print"
gem "bootsnap", ">= 1.4.2", require: false
gem "devise", "~> 4.7", ">= 4.7.1"
gem "haml-rails", "~> 2.0"
gem "pg", ">= 0.18", "< 2.0"
gem "puma", "~> 4.1"
gem "sass-rails", ">= 6"
gem "turbolinks", "~> 5"
gem "webpacker", "~> 4.0"

group :development do
  gem "annotate"
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
  gem "prettier"
  gem "rack-livereload"
  gem "rubycritic", require: false
  gem "spring"
  gem "spring-commands-rspec"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "faker"
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
