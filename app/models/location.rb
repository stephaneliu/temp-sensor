# == Schema Information
#
# Table name: locations
#
#  id         :bigint           not null, primary key
#  city       :string
#  name       :string
#  state      :string
#  street_1   :string
#  street_2   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_locations_on_user_id  (user_id)
#
class Location < ApplicationRecord
end
