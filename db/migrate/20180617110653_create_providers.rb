class CreateProviders < ActiveRecord::Migration[5.1]
  def change
    create_table :providers do |t|
      t.string :title
      t.string :owner
      t.string :email
      t.text :description
      t.integer :cost
      t.string :vehicle
      t.string :city
      t.string :state

      t.timestamps
    end
  end
end
