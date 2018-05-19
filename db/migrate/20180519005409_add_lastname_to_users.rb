class AddLastnameToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :lastname, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
  end
end
