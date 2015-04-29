class AddToManifest < ActiveRecord::Migration
  def change
  	add_column :manifests, :user_id, :integer
  	add_column :manifests, :group_id, :integer
  end
end
