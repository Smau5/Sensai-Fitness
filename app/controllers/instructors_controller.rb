class InstructorsController < ApplicationController

    before_action :find_instructor, only: [:edit, :update, :show, :destroy]

    def index
        @instructors = Instructor.all
    end

    def new 
        @instructor = Instructor.new
    end

    def create
        @instructor = Instructor.new(instructor_params)
        if @instructor.save
            flash[:success] = "Instructor created successfully!"
            redirect_to instructors_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @instructor.update(instructor_params)
            flash[:success] = "Instructor updated successfully!"
            redirect_to instructors_path
        else
            render 'edit'
        end
    end

    def destroy
        @instructor.destroy
        flash[:danger] = "Instructor deleted succesfully!"
        redirect_to instructors_path
    end

    def show

    end

    private

    def find_instructor
        @instructor = Instructor.find(params[:id])
    end

    def instructor_params
        params.require(:instructor).permit(:name, :lastName, :email, :cellphone, :speciality_id, :fitness_resource_id)
    end
end