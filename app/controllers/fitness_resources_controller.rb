class FitnessResourcesController < ApplicationController
    before_action :find_fitness_resource, only: [:edit, :update, :show, :destroy]

    def index
        @fitness_resources = FitnessResource.all
    end

    def new 
        @fitness_resource = FitnessResource.new
    end

    def create
        @fitness_resource = FitnessResource.new(fitness_resource_params)
        if @fitness_resource.save
            flash[:success] = "Fitness resource was updated successfully!"
            redirect_to fitness_resources_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @fitness_resource.update(fitness_resource_params)
            flash[:success] = "Fitness resource was updated successfully!"
            redirect_to fitness_resources_path
        else
            render 'edit'
        end
    end

    def destroy
        @fitness_resource.destroy
        flash[:danger] = "Fitness resource was succesfully deleted"
        redirect_to fitness_resources_path
    end

    def show

    end

    private

    def find_fitness_resource
        @fitness_resource = FitnessResource.find(params[:id])
    end

    def fitness_resource_params
        params.require(:fitness_resource).permit(:name, :address, :phone, :website, :openTime, :closeTime, :resource_type_id)
    end

end