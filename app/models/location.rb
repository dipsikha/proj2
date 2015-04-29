# == Schema Information
#
# Table name: locations
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  address     :string(255)
#

class Location < ActiveRecord::Base
	has_many :groups
end
