class AddGroupAttributes < ActiveRecord::Migration
  def change
  	add_column :groups, :location, :string
  	add_column :groups, :time, :integer
  end
end
