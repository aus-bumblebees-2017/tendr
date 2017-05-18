class CreateHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :histories do |t|
      t.references :food
      t.references :user
      t.integer :state
      t.timestamps
    end
  end
end
