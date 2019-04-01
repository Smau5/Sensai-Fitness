class CreateCompanyLeadTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :company_lead_transactions do |t|
      t.string :description
      t.integer :company_lead_id
      t.integer :company_sale_representative_id
      t.integer :company_lead_transaction_source_id
      t.timestamps
    end
  end
end
