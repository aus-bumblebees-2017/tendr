class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :diet, :string
    add_column :users, :zipcode, :integer
    add_column :users, :user_name, :string
    add_column :users, :last_viewed, :text
  end
end
