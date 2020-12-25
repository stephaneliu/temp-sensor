# == Schema Information
#
# Table name: users
#
#  id         :bigint           not null, primary key
#  email      :string
#  first_name :string
#  last_name  :string
#  phone      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "rails_helper"

RSpec.describe User, type: :model do
  describe "validation" do
    specify { is_expected.to validate_presence_of(:first_name) }
    specify { is_expected.to validate_presence_of(:last_name) }
    specify { is_expected.to validate_presence_of(:email) }
    specify { is_expected.to validate_presence_of(:phone) }
  end
end
