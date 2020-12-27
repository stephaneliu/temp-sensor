# frozen_string_literal: true

class SensorClient < ApiStruct::Client
  sensor_api

  def show(id)
    get(path: "get/?id=#{id}")
  rescue SwarmAccessError => e
    Rails.logger.error("Error accessing Swarm API: #{e.message}")
  end
end
