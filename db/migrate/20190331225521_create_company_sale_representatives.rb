class CreateCompanySaleRepresentatives < ActiveRecord::Migration[5.2]
  def change
    create_table :company_sale_representatives do |t|
      t.string :name
      t.string :lastName
      t.timestamps
    end
  end
end
