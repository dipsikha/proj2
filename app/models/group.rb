# == Schema Information
#
# Table name: groups
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  time        :string(255)
#  location    :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#  location_id :integer
#

class Group < ActiveRecord::Base
	has_many :manifests
	has_many :users, through: :manifests
end
