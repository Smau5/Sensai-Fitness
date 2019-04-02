class FitnessResourceDisciplineTypesController < ApplicationController
    before_action :find_fitness_resource_discipline_type, only: [:edit, :update, :show, :destroy]

    def index
        @fitness_resource_discipline_types = FitnessResourceDisciplineType.all

    end
    def new
        @fitness_resource = FitnessResource.find(params[:fitness_resource_id])
        @fitness_resource_discipline_type = FitnessResourceDisciplineType.new
    end


    def create
        @fitness_resource_discipline_type = FitnessResourceDisciplineType.new(fitness_resource_discipline_type_params)
        if @fitness_resource_discipline_type.save
            flash[:success] = "Fitness and type was saved successfully!"
            redirect_to fitness_resource_discipline_types_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @fitness_resource_discipline_type.update(fitness_resource_discipline_type_params)
            flash[:success] = "Fitness resource discipline was updated successfully!"
            redirect_to fitness_resource_discipline_types_path
        else
            render 'edit'
        end
    end

    def destroy
        @fitness_resource_discipline_type.destroy
        flash[:danger] = "Fitness resource - discipline association was succesfully deleted"
        redirect_to fitness_resource_discipline_types_path
    end


    private

    def find_fitness_resource_discipline_type
        @fitness_resource_discipline_type = FitnessResourceDisciplineType.find(params[:id])
    end

    def fitness_resource_discipline_type_params
        params.require(:fitness_resource_discipline_type).permit(:fitness_resource_id,:discipline_type_id)
    end
end