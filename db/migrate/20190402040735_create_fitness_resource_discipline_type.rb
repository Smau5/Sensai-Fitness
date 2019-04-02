class CreateFitnessResourceDisciplineType < ActiveRecord::Migration[5.2]
  def change
    create_table :fitness_resource_discipline_types do |t|
      t.integer :fitness_resource_id
      t.integer :discipline_type_id
    end
  end
end
