class AddUserAttributes < ActiveRecord::Migration
  def change
  	add_column :users, :username, :string
  	add_column :users, :password, :integer
  	add_column :users, :name, :string
  	add_column :users, :year, :integer
  	add_column :users, :major, :string
  	add_column :users, :phone, :integer
  end
end
