# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Welcomes", type: :request do
  describe "Welcoming" do
    let(:success) { 1 }

    specify { expect(success).to eq(1) }
  end
end
