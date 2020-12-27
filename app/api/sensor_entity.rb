# frozen_string_literal: true

class SensorEntity < ApiStruct::Entity
  client_service SensorClient

  has_entity :location, as: LocationEntity
  has_entity :open_job, as: JobEntity

  attr_entity :id, :number, :battery_status, :last_reported_date_time, :temperature
end
