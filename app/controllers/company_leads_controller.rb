class CompanyLeadsController < ApplicationController

    def index
        @company_leads = CompanyLead.all
    end

    def new 
        @company_lead = CompanyLead.new
    end

    def create
        @company_lead = CompanyLead.new(companyLead_params)
        if @company_lead.save
            flash[:success] = "Register successful!"
            redirect_to company_leads_path
        else
            render 'new'
        end
    end

    private

    def companyLead_params
        params.require(:company_lead).permit(:name, :lastName, :email, :cellphone, :company_lead_source_id)
    end
end