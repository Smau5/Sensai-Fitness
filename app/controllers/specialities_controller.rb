class SpecialitiesController < ApplicationController

    before_action :find_speciality, only: [:edit, :update, :show, :destroy]

    def index
        @specialities = Speciality.all
    end

    def create
        @speciality = Speciality.new(speciality_params)
        if @speciality.save
            flash[:success] = "speciality created successfully!"
            redirect_to specialities_path
        else
            render 'new'
        end
    end

    def new
        @speciality = Speciality.new
    end

    def edit

    end

    def update
        if @speciality.update(speciality_params)
            flash[:success] = "speciality updated successfully!"
            redirect_to specialities_path
        else
            render 'edit'
        end
    end

    def destroy
        @speciality.destroy
        flash[:danger] = "speciality was succesfully deleted"
        redirect_to specialities_path
    end

    private

    def find_speciality
        @speciality = Speciality.find(params[:id])
    end

    def speciality_params
        params.require(:speciality).permit(:name,:description)
    end
end