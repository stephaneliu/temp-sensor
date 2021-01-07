# frozen_string_literal: true

require "rails_helper"

RSpec.describe SensorEntity do
  describe "comprehensions" do
    subject(:entity) do
      described_class.new(
        {
          id: "123",
          number: "D3b369",
          battery_status: "Good",
          last_reported_date_time: "Time",
          temperature: "0.6",
          location: { name: "location name", street: "location abc st." },
          open_job: { customer_name: "job customer name", company_name: "job company name" }
        }
      )
    end

    specify { expect(entity.id).to eq("123") }

    specify { expect(entity.number).to eq("D3b369") }

    specify { expect(entity.battery_status).to eq("Good") }

    specify { expect(entity.last_reported_date_time).to eq("Time") }

    specify { expect(entity.temperature).to eq("0.6") }

    specify { expect(entity.location.name).to eq("location name") }

    specify { expect(entity.location.street).to eq("location abc st.") }

    specify { expect(entity.open_job.customer_name).to eq("job customer name") }

    specify { expect(entity.open_job.company_name).to eq("job company name") }
  end

  describe "client_service configuration" do
    describe ".show" do
      subject(:entity) { described_class.show(sensor_id) }

      let(:sensor_id) { "9299" }

      specify { VCR.use_cassette("get sensor 9299") { expect(entity.id).to eq(sensor_id) } }
    end
  end
end
