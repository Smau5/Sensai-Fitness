class CompanyLead < ApplicationRecord
    belongs_to :company_lead_source
    has_many :company_lead_transaction, dependent: :delete_all
end