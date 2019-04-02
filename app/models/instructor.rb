class Instructor < ApplicationRecord
    belongs_to :speciality
    belongs_to :fitness_resource

    def name_with_lastname
        "#{name} #{lastName}"
    end
end