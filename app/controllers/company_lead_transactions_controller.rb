class CompanyLeadTransactionsController < ApplicationController
    def index
        @company_lead_transactions = CompanyLeadTransaction.all
    end
end
