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
FactoryBot.define do
  factory :sensor do
    reference_id { 1 }
    serial { "MyString" }
    battery_status { "MyString" }
    last_reported_date_time { "2020-12-26 22:45:18" }
  end
end
