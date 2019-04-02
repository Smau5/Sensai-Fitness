class Speciality < ApplicationRecord
    has_many :instructors, dependent: :delete_all
end