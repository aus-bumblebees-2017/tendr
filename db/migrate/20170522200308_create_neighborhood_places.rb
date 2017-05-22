class CreateNeighborhoodPlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :neighborhood_places do |t|
      t.integer :place_id
      t.integer :neighborhood_id
      
      t.timestamps
    end
  end
end
