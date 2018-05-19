class AddOwnerToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :owner, :string
  end
end
