# frozen_string_literal: true

module Overcommit
  module Hook
    module PrePush
      class RbPrettier < Base
        def run
          msg = "Prettier issues. Run `bundle exec rbprettier --write '**/*.rb'`"
          results = execute(command, args: applicable_files)

          return :pass if results.success?

          [Overcommit::Hook::Message.new(:error, nil, nil, msg)]
        end
      end
    end
  end
end
