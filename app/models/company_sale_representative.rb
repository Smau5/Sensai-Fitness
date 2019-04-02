class CompanySaleRepresentative < ApplicationRecord
    has_many :company_lead_transaction, dependent: :delete_all

    def name_with_lastname
        "#{name} #{lastName}"
    end
end