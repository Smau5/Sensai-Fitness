class CreateCompanyLeadSources < ActiveRecord::Migration[5.2]
  def change
    create_table :company_lead_sources do |t|
      t.string :description
      t.timestamps
    end
  end
end
