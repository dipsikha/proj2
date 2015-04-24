class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :description
      t.string :time
      t.string :location

      t.timestamps
    end
  end
end
