class CompanyLeadSource < ApplicationRecord
    has_many :company_leads, dependent: :delete_all
end