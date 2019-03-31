class CompanyLeadSourcesController < ApplicationController
    def index
        @company_lead_sources = CompanyLeadSource.all
    end
end