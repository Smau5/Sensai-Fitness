class Plan < ApplicationRecord
    belongs_to :fitness_resource
    has_many :plan_tags
    has_many :tags, through: :plan_tags, dependent: :delete_all

    def self.range(plans, min, max)
        plans = plans.where("price BETWEEN #{min} AND #{max}")
    end
end