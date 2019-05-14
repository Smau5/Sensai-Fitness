class Equipment < ApplicationRecord
    self.table_name = "equipments"
    has_many :resource_equipments
    has_many :fitness_resources, through: :resource_equipment
end