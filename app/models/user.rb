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
class User < ApplicationRecord
  include Clearance::User

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true
  validates :phone, presence: true

  def manager?
    manager || admin?
  end
end
