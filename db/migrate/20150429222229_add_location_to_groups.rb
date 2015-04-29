class AddLocationToGroups < ActiveRecord::Migration
  def change
    add_reference :groups, :location, index: true
  end
end
