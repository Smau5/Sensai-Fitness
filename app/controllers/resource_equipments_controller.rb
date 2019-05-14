class ResourceEquipmentsController < ApplicationController
    def new
      	@fitness_resource = FitnessResource.find(params[:fitness_resource_id])
		@resource_equipment = ResourceEquipment.new
    end
    
    def create
      	@resource_equipment = ResourceEquipment.new(resource_equipment_params)
		if @resource_equipment.save
			flash[:success] = "Fitness and type was saved successfully!"
			redirect_to fitness_resources_path
		else
			render 'new'
		end
    end
	def show
        @fitness_resource = FitnessResource.find(params[:id])
    end
    def destroy
    end

    def resource_equipment_params
      	params.require(:resource_equipment).permit(:fitness_resource_id,:equipment_id)
    end 
end
  
  