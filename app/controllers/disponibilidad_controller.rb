class DisponibilidadController < ApplicationController
    def index
        @fitness_resources = FitnessResource.all
    end
end
