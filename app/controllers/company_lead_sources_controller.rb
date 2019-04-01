class CompanyLeadSourcesController < ApplicationController

    before_action :find_lead_source, only: [:edit, :update, :show, :destroy]

    def index
        @company_lead_sources = CompanyLeadSource.all
    end

    def create
        @company_lead_source = CompanyLeadSource.new(company_lead_source_params)
        if @company_lead_source.save
            flash[:success] = "Register successful!"
            redirect_to company_lead_sources_path
        else
            render 'new'
        end
    end

    def new
        @company_lead_source = CompanyLeadSource.new
    end

    def edit

    end

    def update
        if @company_lead_source.update(company_lead_source_params)
            flash[:success] = "Lead Source updated successfully!"
            redirect_to company_lead_sources_path
        else
            render 'edit'
        end
    end

    def destroy
        @company_lead_source.destroy
        flash[:danger] = "Lead Source was succesfully deleted"
        redirect_to company_lead_sources_path
    end

    private

    def find_lead_source
        @company_lead_source = CompanyLeadSource.find(params[:id])
    end

    def company_lead_source_params
        params.require(:company_lead_source).permit(:description)
    end
end