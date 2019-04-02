class CreateFitnessResources < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_resources do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :website
      t.time :openTime
      t.time :closeTime
      t.timestamps
    end
  end
end
