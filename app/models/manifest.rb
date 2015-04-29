# == Schema Information
#
# Table name: manifests
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  group_id   :integer
#

class Manifest < ActiveRecord::Base
	belongs_to :group
	belongs_to :user
end
