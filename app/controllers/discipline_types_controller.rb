class DisciplineTypesController < ApplicationController

    before_action :find_discipline_type, only: [:edit, :update, :show, :destroy]

    def index
        @discipline_types = DisciplineType.all
    end

    def new
        @discipline_type = DisciplineType.new
    end

    def create
        @discipline_type = DisciplineType.new(discipline_type_params)
        if @discipline_type.save
            flash[:success] = "Discipline created successfully!"
            redirect_to discipline_types_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @discipline_type.update(discipline_type_params)
            flash[:success] = "Discipline type was updated successfully!"
            redirect_to discipline_types_path
        else
            render 'edit'
        end
    end

    def destroy
        @discipline_type.destroy
        flash[:danger] = "Discipline type was succesfully deleted"
        redirect_to discipline_types_path
    end

    private

    def find_discipline_type
        @discipline_type = DisciplineType.find(params[:id])
    end

    def discipline_type_params
        params.require(:discipline_type).permit(:name, :description)
    end
end