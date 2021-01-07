# frozen_string_literal: true

require "rails_helper"

RSpec.describe JobEntity do
  describe "comprehensions" do
    subject(:entity) do
      described_class.new({ customer_name: customer_name, company_name: company })
    end

    let(:customer_name) { "Bob Smith" }
    let(:company) { "ABC 123" }

    specify { expect(entity.customer_name).to eq(customer_name) }
    specify { expect(entity.company_name).to eq(company) }
  end
end
