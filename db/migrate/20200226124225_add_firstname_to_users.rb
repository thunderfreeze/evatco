class AddFirstnameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :firstname, :string
    add_index :users, :firstname, unique: true
  end
end
