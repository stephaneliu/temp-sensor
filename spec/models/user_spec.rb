# frozen_string_literal: true

# == Schema Information
#
# Table name: users
#
#  id                 :bigint           not null, primary key
#  admin              :boolean          default(FALSE)
#  confirmation_token :string(128)
#  email              :string
#  encrypted_password :string(128)
#  first_name         :string
#  last_name          :string
#  manager            :boolean          default(FALSE)
#  phone              :string
#  remember_token     :string(128)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
# Indexes
#
#  index_users_on_email           (email)
#  index_users_on_remember_token  (remember_token)
#
require "rails_helper"

RSpec.describe User, type: :model do
  describe "validation" do
    specify { is_expected.to validate_presence_of(:first_name) }
    specify { is_expected.to validate_presence_of(:last_name) }
    specify { is_expected.to validate_presence_of(:email) }
    specify { is_expected.to validate_presence_of(:phone) }
  end

  describe "admin role" do
    subject(:admin) { build(:user, admin: true) }

    let(:user) { build(:user) }

    specify { expect(user.admin?).to eq(false) }
    specify { expect(admin.admin?).to eq(true) }
    specify { expect(admin.manager?).to eq(true) }
  end

  describe "manager role" do
    subject(:manager) { build(:user, manager: true) }

    let(:user) { build(:user) }

    specify { expect(user.manager?).to eq(false) }
    specify { expect(manager.admin?).to eq(false) }
    specify { expect(manager.manager?).to eq(true) }
  end
end
