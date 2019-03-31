class CreateCompanyLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :company_leads do |t|
      t.string :name
      t.string :lastName
      t.string :email
      t.string :cellphone
      t.timestamps
    end
  end
end
