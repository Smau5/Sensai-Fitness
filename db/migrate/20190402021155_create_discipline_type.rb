class CreateDisciplineType < ActiveRecord::Migration[5.2]
  def change
    create_table :discipline_types do |t|
        t.string :name
        t.string :description
    end
  end
end
