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
FactoryBot.define do
  sequence :email do |n|
    "user#{n}@example.com"
  end

  factory :user do
    first_name { "MyString" }
    last_name { "MyString" }
    password { "password" }
    email
    phone { "MyString" }
  end
end
