class AddColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :zipcode, :integer, presence: true
    add_column :users, :user_name, :string, presence: true
    add_column :users, :last_viewed, :text
  end
end
