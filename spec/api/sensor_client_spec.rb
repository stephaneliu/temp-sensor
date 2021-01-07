# frozen_string_literal: true

require "rails_helper"

RSpec.describe SensorClient do
  describe ".show" do
    subject(:client) { described_class.new.show(sensor_id) }

    let(:sensor_id) { 9299 }

    specify do
      VCR.use_cassette("show sensor 9299") do
        expect(client.value![:id]).to eq(sensor_id.to_s)
        expect(client.value![:number]).not_to be_blank
      end
    end

    specify do
      VCR.use_cassette("show sensor 9299") do
        expect(client.value![:battery_status]).not_to be_blank
      end
    end

    specify do
      VCR.use_cassette("show sensor 9299") do
        expect(client.value![:last_reported_date_time]).not_to be_blank
      end
    end

    specify do
      VCR.use_cassette("show sensor 9299") { expect(client.value![:temperature]).not_to be_blank }
    end
  end
end
