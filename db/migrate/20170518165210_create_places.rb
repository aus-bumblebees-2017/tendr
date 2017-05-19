class CreatePlaces < ActiveRecord::Migration[5.0]
  def change
    create_table :places do |t|
      t.text :google_id
      t.string :name
      t.float :rating
      t.timestamps
    end
  end
end
