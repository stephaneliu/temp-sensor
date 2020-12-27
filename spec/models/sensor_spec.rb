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
require 'rails_helper'

RSpec.describe Sensor, type: :model do
  describe "validations" do
    specify do
      is_expected.to validate_presence_of(:reference_id)
      is_expected.to validate_presence_of(:serial)
      is_expected.to validate_presence_of(:last_reported_date_time)
    end
  end
end
