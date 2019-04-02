class CompanySaleRepresentativesController < ApplicationController
    before_action :find_company_sale_representative, only: [:edit, :update, :show, :destroy]
    def index
        @company_sale_representatives = CompanySaleRepresentative.all
    end
    def new 
        @company_sale_representative = CompanySaleRepresentative.new
    end
    def create
        @company_sale_representative = CompanySaleRepresentative.new(company_sale_representative_params)
        if @company_sale_representative.save
            flash[:success] = "Sale representative created successfully!"
            redirect_to company_sale_representatives_path
        else
            render 'new'
        end
    end

    def show
    end

    def edit
    end

    def update
        if @company_sale_representative.update(company_sale_representative_params)
            flash[:success] = "Sale representative updated successfully!"
            redirect_to company_sale_representative_path(@company_sale_representative)
        else
            render 'edit'
        end
    end

    def destroy
        @company_sale_representative.destroy
        flash[:danger] = "Sale representative was succesfully deleted"
        redirect_to company_sale_representatives_path
    end


    private

    def find_company_sale_representative
        @company_sale_representative = CompanySaleRepresentative.find(params[:id])
    end
    
    def company_sale_representative_params
        params.require(:company_sale_representative).permit(:name, :lastName)
    end
end