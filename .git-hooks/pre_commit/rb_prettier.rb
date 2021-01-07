# frozen_string_literal: true

module Overcommit
  module Hook
    module PreCommit
      class RbPrettier < Base
        def run
          results = execute(command, args: applicable_files)

          return :pass if results.success?

          msg =
            "The following file(s) failed Prettier linting:\n\n#{results.stdout}\n" \
              "Run bundle exec rbprettier --write '**/*.rb'"

          [Overcommit::Hook::Message.new(:error, nil, nil, msg)]
        end
      end
    end
  end
end
