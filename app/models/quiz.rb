class Instructor < ApplicationRecord
    belongs_to :speciality
    belongs_to :fitness_resource
    has_many :materials

    def name_with_lastname
        "#{name} #{lastName}"
    end
end