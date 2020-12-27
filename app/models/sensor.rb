# == Schema Information
#
# Table name: sensors
#
#  id                      :bigint           not null, primary key
#  battery_status          :string
#  last_reported_date_time :datetime
#  serial                  :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  location_id             :bigint
#  reference_id            :integer
#
# Indexes
#
#  index_sensors_on_location_id  (location_id)
#
class Sensor < ApplicationRecord
  validates :reference_id, presence: true
  validates :serial, presence: true
  validates :last_reported_date_time, presence: true
end
