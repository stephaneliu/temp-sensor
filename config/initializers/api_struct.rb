# frozen_string_literal: true

ApiStruct::Settings.configure do |config|
  config.endpoints = {
    sensor_api: {
      root: "https://host.sensor-swarm.com/api/v1/sensor",
      headers: {
        "content-type": "application/json",
        "Authorization": "Bearer #{Rails.application.credentials.swarm[:bearer_token]}"
      }
    }
  }
end
