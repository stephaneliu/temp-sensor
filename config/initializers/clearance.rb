# frozen_string_literal: true

Clearance.configure do |config|
  config.allow_sign_up = false
  config.mailer_sender = "reply@simplified-technologies.com"
  config.rotate_csrf_on_sign_in = true
end
