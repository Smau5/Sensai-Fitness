class DisciplineType < ApplicationRecord
    has_many :fitness_resource_discipline_types
    has_many :fitness_resources, through: :fitness_resource_discipline_types
end