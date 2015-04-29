class RemoveLocationId < ActiveRecord::Migration
  def change
  	remove_column :groups, :locaiton_id
  end
end
