class CreateRequests < ActiveRecord::Migration[5.1]
  def change
    create_table :requests do |t|
      t.string :title
      t.string :owner
      t.string :email
      t.text :description
      t.integer :cost
      t.string :size
      t.string :urgency
      t.string :from_address
      t.string :from_city
      t.string :from_state
      t.string :to_address
      t.string :to_city
      t.string :to_state

      t.timestamps
    end
  end
end
