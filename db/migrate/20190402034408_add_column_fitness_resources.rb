class AddColumnFitnessResources < ActiveRecord::Migration[5.2]
  def change
    add_column :fitness_resources, :resource_type_id, :integer
  end
end
