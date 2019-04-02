class ResourceType < ApplicationRecord
    has_many :fitness_resource, dependent: :delete_all
end