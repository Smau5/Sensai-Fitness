class CreateResourceEquipments < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_equipments do |t|
      t.integer :fitness_resource_id
      t.integer :equipment_id
      t.timestamps
    end
  end
end
