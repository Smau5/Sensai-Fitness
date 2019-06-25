class QuizController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]
    def index
        @quiz = 
        [
            {
                :index => 10,
                :question => "Gender:",
                :answers => [
                    {:text => "Male", :tag => "Male", :disables => 20},
                    {:text => "Female", :tag => "Female", :enables => 20},
                ]
            }, 
            {
                :index => 20,
                :hide => true,
                :question => "Are you pregnant?",
                :answers => [
                    {:text => "Yes", :tag => "Pregnant"},
                    {:text => "No"},
                ]
            },   
            {
                :index => 30,
                :question => "Which one do you prefer?",
                :answers => [
                    {:text => "outdoor activities", :tag => "Outdoor"},
                    {:text => "indoor activities", :tag => "Indoor"},
                ]
            },   
            {
                :index => 40,
                :question => "Do you like swimming?",
                :answers => [
                    {:text => "Yes", :tag => "Swimming"},
                    {:text => "No"},
                ]
            },
            {
                :index => 50,
                :question => "Do you like team group activities?",
                :answers => [
                    {:text => "Yes", :tag => "Teamgroup"},
                    {:text => "No"},
                ]
            },
        ]
    end
    
    def  create
        @params = params.permit("10","20","30","40","50")
        @results = []
        @params.each do |p|
            @results.push(p[1])
        end
        @plans = Plan.joins(:tags).where(tags: { name: @results }).distinct
        

        render "/quiz/results"
    end
end