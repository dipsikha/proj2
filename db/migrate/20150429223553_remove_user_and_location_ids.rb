class RemoveUserAndLocationIds < ActiveRecord::Migration
  def change
  	remove_column :groups, :user_id
  	remove_column :groups, :locaiton_id
  end
end
