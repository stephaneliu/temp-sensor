# frozen_string_literal: true

workers_count = Integer(ENV.fetch("WEB_CONCURRENCY", 2))
threads_count = ENV.fetch("RAILS_MAX_THREADS", 5)

workers workers_count
threads threads_count, threads_count

preload_app!

rackup DefaultRackup
port ENV.fetch("PORT", 3000)
environment ENV.fetch("RAILS_ENV", "development")

on_worker_boot { ActiveRecord::Base.establish_connection }

# Allow puma to be restarted by `rails restart` command.
plugin :tmp_restart
