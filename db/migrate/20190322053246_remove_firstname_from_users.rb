class RemoveFirstnameFromUsers < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :firstname
    remove_column :users, :lastname
  end
end
