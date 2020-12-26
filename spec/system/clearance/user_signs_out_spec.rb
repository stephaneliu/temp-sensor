require "system_helper"
require "system/support/clearance/clearance_helpers"

RSpec.describe "User signs out" do
  it "signs out", :pending do
    sign_in
    sign_out

    expect_user_to_be_signed_out
  end
end
