class AddNameToGroup < ActiveRecord::Migration
  def change
  	add_column :groups, :name, :string
  	add_column :groups, :description, :string
  end
end
