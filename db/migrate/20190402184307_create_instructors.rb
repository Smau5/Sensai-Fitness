class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :lastName
      t.string :cellphone
      t.string :email
      t.integer :speciality_id
      t.timestamps
    end
  end
end
