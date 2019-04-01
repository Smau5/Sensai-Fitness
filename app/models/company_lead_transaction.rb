class CompanyLeadTransaction < ApplicationRecord
    belongs_to :company_sale_representative
    belongs_to :company_lead
    belongs_to :company_lead_transaction_source
end