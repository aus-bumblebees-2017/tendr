class CreateNeighborhoods < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhoods do |t|
      t.string :name
      t.string :area
      t.float :latitude
      t.float :longitude
      
      t.timestamps
    end
  end
end
