class CompanyLeadsController < ApplicationController

    before_action :find_lead, only: [:edit, :update, :show, :destroy]

    def index
        @company_leads = CompanyLead.all
    end

    def new 
        @company_lead = CompanyLead.new
    end

    def create
        @company_lead = CompanyLead.new(company_lead_params)
        if @company_lead.save
            flash[:success] = "Register successful!"
            redirect_to company_leads_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @company_lead.update(company_lead_params)
            flash[:success] = "Lead updated successfully!"
            redirect_to company_leads_path
        else
            render 'edit'
        end
    end

    def destroy
        @company_lead.destroy
        flash[:danger] = "Lead was succesfully deleted"
        redirect_to company_leads_path
    end

    def show

    end

    private

    def find_lead
        @company_lead = CompanyLead.find(params[:id])
    end

    def company_lead_params
        params.require(:company_lead).permit(:name, :lastName, :email, :cellphone, :company_lead_source_id)
    end
end