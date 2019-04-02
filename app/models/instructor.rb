class Instructor < ApplicationRecord
    belongs_to :speciality

    def name_with_lastname
        "#{name} #{lastName}"
    end
end