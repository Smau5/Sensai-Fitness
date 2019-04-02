class FitnessResource < ApplicationRecord
    belongs_to :resource_type
    has_many :fitness_resource_discipline_types
    has_many :discipline_types, through: :fitness_resource_discipline_types
    has_many :instructors
    has_many :plans
end