class CreatePlans < ActiveRecord::Migration[5.2]
  def change
    create_table :plans do |t|
      t.string :name
      t.string :description
      t.string :price
      t.integer :fitness_resource_id
      t.timestamps
    end
  end
end
