class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.string :title
      t.string :owner
      t.string :email
      t.text :description
      t.string :price
      t.string :integer
      t.string :transport
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
