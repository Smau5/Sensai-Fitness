class CompanyLeadTransactionSourcesController < ApplicationController

    before_action :find_transaction_source, only: [:edit, :update, :show, :destroy]

    def index
        @transaction_sources = CompanyLeadTransactionSource.all
    end
    def new
        @transaction_source = CompanyLeadTransactionSource.new
    end
    def create
        @transaction_source = CompanyLeadTransactionSource.new(transaction_source_params)
        if @transaction_source.save
            flash[:success] = "Sale representative created successfully!"
            redirect_to company_lead_transaction_sources_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @transaction_source.update(transaction_source_params)
            flash[:success] = "Sale representative updated successfully!"
            redirect_to company_lead_transaction_source_path(@transaction_source)
        else
            render 'edit'
        end
    end
    
    def show
    
    end

    def destroy
        @transaction_source.destroy
        flash[:danger] = "Sale representative was succesfully deleted"
        redirect_to company_lead_transaction_sources_path
    end
    private

    def find_transaction_source
        @transaction_source = CompanyLeadTransactionSource.find(params[:id])
    end
    
    def transaction_source_params
        params.require(:company_lead_transaction_source).permit(:name)
    end
end