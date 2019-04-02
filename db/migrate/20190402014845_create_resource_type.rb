class CreateResourceType < ActiveRecord::Migration[5.2]
  def change
    create_table :resource_types do |t|
        t.string :name
        t.string :description
    end
  end
end
