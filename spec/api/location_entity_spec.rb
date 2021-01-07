# frozen_string_literal: true

require "rails_helper"

RSpec.describe LocationEntity do
  describe "comprehensions" do
    subject(:entity) { described_class.new({ name: name, street: street }) }

    let(:name) { "Company abc" }
    let(:street) { "123 Main St." }

    specify { expect(entity.name).to eq(name) }
    specify { expect(entity.street).to eq(street) }
  end
end
