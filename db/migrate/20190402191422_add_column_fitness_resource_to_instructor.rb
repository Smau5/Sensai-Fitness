class AddColumnFitnessResourceToInstructor < ActiveRecord::Migration[5.2]
  def change
    add_column :instructors, :fitness_resource_id, :integer
  end
end
