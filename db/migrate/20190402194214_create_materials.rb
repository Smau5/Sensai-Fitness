class CreateMaterials < ActiveRecord::Migration[5.2]
  def change
    create_table :materials do |t|
      t.string :name
      t.string :description
      t.string :content
      t.integer :instructor_id
    end
  end
end
