class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.references :place
      t.text :google_place_id

      t.timestamps
    end
  end
end
