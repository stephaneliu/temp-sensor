# frozen_string_literal: true

require "capybara/cuprite"

# Usually, especially when using Selenium, developers tend to increase the max wait time.
# With Cuprite, there is no need for that.
Capybara.default_max_wait_time = 2

# Normalize whitespaces when using `has_text?` and similar matchers,
# i.e., ignore newlines, trailing spaces, etc.
# That makes tests less dependent on slight UI changes.
Capybara.default_normalize_ws = true

# Where to store system tests artifacts (e.g. screenshots, downloaded files, etc.).
# It could be useful to be able to configure this path from the outside (e.g., on CI).
Capybara.save_path = ENV.fetch("CAPYBARA_ARTIFACTS", "./tmp/capybara")

Capybara.singleton_class.prepend(
  Module.new do
    attr_accessor :last_used_session

    def using_session(name, &block)
      self.last_used_session = name
      super
    ensure
      self.last_used_session = nil
    end
  end
)
