class ChangeTimeVariableInGroup < ActiveRecord::Migration
  def change
  	remove_column :groups, :time
  	add_column :groups, :time, :Time

  end
end
