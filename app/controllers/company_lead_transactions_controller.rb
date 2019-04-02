class CompanyLeadTransactionsController < ApplicationController
    def index
        @company_lead_transactions = CompanyLeadTransaction.all
    end

    def new
        @company_lead_transaction = CompanyLeadTransaction.new
        @company_lead = CompanyLead.find(params[:company_lead_id])
    end

    def create 
        @company_lead_transaction = CompanyLeadTransaction.new(company_lead_transaction_params)
        if @company_lead_transaction.save
            flash[:success] = "Register successful!"
            redirect_to company_lead_transactions_path
        else
            render 'new'
        end
    end

    private
    def company_lead_transaction_params
        params.require(:company_lead_transaction).permit(:description, 
                                                        :company_lead_id, 
                                                        :company_sale_representative_id, 
                                                        :company_lead_transaction_source_id)
    end
end
