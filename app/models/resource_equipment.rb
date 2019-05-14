class ResourceEquipment < ApplicationRecord
    belongs_to :equipment
    belongs_to :fitness_resource
end
