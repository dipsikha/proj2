class ChangeGroupAttributes < ActiveRecord::Migration
  def change
  	change_column :groups, :location, :loc
  end
end
