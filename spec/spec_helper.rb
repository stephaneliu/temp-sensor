# frozen_string_literal: true

if ENV["COVERAGE"]
  require "simplecov"
  require "simplecov-lcov"

  SimpleCov.start "rails" do
    if ENV["CI"]
      SimpleCov::Formatter::LcovFormatter.config do |config|
        config.report_with_single_file = true
        config.lcov_file_name = "lcov.info"
      end
      formatter SimpleCov::Formatter::MultiFormatter.new(
                  [SimpleCov::Formatter::HTMLFormatter, SimpleCov::Formatter::LcovFormatter]
                )
    else
      SimpleCov::Formatter::HTMLFormatter
    end

    minimum_coverage 95
    maximum_coverage_drop 1

    # https://github.com/simplecov-ruby/simplecov#branch-coverage-ruby--25I
    enable_coverage :branch

    framework_files = %w[channel.rb connection.rb application_job.rb application_mailer.rb]

    framework_class =
      proc do |source_file|
        framework_files.find { |file| file == source_file.filename.split("/").last } || false
      end

    add_filter([framework_class, /vendor/])
  end
end

# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration
RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
  config.filter_run_when_matching :focus
  config.example_status_persistence_file_path = "tmp/rspec_examples.txt"
  config.disable_monkey_patching!
  config.default_formatter = "doc" if config.files_to_run.one?

  # config.profile_examples = 10
  config.order = :random
end
