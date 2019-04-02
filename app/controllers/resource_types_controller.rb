class ResourceTypesController < ApplicationController

    before_action :find_resource_type, only: [:edit, :update, :show, :destroy]

    def index 
        @resource_types = ResourceType.all
    end

    def new
        @resource_type = ResourceType.new
    end

    def create
        @resource_type = ResourceType.new(resource_type_params)
        if @resource_type.save
            flash[:success] = "Resource type created sucessfully!"
            redirect_to resource_types_path
        else
            render 'new'
        end
    end

    def edit

    end

    def update
        if @resource_type.update(resource_type_params)
            flash[:success] = "Resource type updated successfully!"
            redirect_to resource_types_path
        else
            render 'edit'
        end
    end

    def destroy
        @resource_type.destroy
        flash[:danger] = "Resource type was succesfully deleted"
        redirect_to resource_types_path
    end

    private

    def find_resource_type
        @resource_type = ResourceType.find(params[:id])
    end

    def resource_type_params
        params.require(:resource_type).permit(:name, :description)
    end
end