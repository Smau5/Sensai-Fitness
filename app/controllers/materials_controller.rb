class MaterialsController < ApplicationController

    before_action :find_material, only: [:edit, :update, :show, :destroy]

    def index
        @materials = Material.all
    end

    def new 
        @material = Material.new
    end

    def create
        @material = Material.new(material_params)
        if @material.save
            flash[:success] = "Register successful!"
            redirect_to materials_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @material.update(material_params)
            flash[:success] = "Lead updated successfully!"
            redirect_to materials_path
        else
            render 'edit'
        end
    end

    def destroy
        @material.destroy
        flash[:danger] = "Lead was succesfully deleted"
        redirect_to materials_path
    end

    def show

    end

    private

    def find_material
        @material = Material.find(params[:id])
    end

    def material_params
        params.require(:material).permit(:name, :description, :content , :instructor_id)
    end
end