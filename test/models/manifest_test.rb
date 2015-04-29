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

require 'test_helper'

class ManifestTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
