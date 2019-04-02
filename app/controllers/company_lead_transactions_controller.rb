class CompanyLeadTransactionsController < ApplicationController
    before_action :find_transaction, only: [:edit, :update, :show, :destroy]

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
            flash[:success] = "Transaction created successfully!"
            redirect_to company_lead_transactions_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @company_lead_transaction.update(company_lead_transaction_params)
            flash[:success] = "Transaction updated successfully!"
            redirect_to company_lead_transactions_path
        else
            render 'edit'
        end
    end

    def destroy
        @company_lead_transaction.destroy
        flash[:danger] = "Transaction was succesfully deleted"
        redirect_to company_lead_transactions_path
    end

    private

    def find_transaction
        @company_lead_transaction = CompanyLeadTransaction.find(params[:id])
    end
    def company_lead_transaction_params
        params.require(:company_lead_transaction).permit(:description, 
                                                        :company_lead_id, 
                                                        :company_sale_representative_id, 
                                                        :company_lead_transaction_source_id)
    end
end
