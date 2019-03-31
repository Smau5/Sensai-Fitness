class CreateCompanyLeadsTransactionSources < ActiveRecord::Migration[5.2]
  def change
    create_table :company_lead_transaction_sources do |t|
      t.string :name
      t.timestamps
    end
  end
end
