# frozen_string_literal: true

require "rails_helper"

RSpec.describe WelcomeController do
  describe "#index" do
    context "with format html" do
      before { get :index }

      specify { expect(response).to render_template("index") }
    end
  end
end
