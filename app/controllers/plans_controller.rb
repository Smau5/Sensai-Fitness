class PlansController < ApplicationController

    before_action :find_plan, only: [:edit, :update, :destroy]

    def index
        @plans = Plan.all
    end

    def new 
        @plan = Plan.new
    end

    def create
        @plan = Plan.new(plan_params)
        if @plan.save
            flash[:success] = "Register successful!"
            redirect_to plans_path
        else
            render 'new'
        end
    end

    def show
        @fitness_resource = FitnessResource.find(params[:id])
    end

    def edit

    end

    def update
        if @plan.update(plan_params)
            flash[:success] = "Lead updated successfully!"
            redirect_to plans_path
        else
            render 'edit'
        end
    end

    def destroy
        @plan.destroy
        flash[:danger] = "Lead was succesfully deleted"
        redirect_to plans_path
    end

    private

    def find_plan
        @plan = Plan.find(params[:id])
    end

    def plan_params
        params.require(:plan).permit(:name, :description, :price , :fitness_resource_id)
    end
end