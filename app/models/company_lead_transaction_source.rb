class CompanyLeadTransactionSource < ApplicationRecord
    has_many :company_lead_transaction, dependent: :delete_all
end