class AddSourcesToLeads < ActiveRecord::Migration[5.2]
  def change
    add_column :company_leads, :company_lead_source_id, :integer
  end
end
