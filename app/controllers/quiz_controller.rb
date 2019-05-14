class QuizController < ApplicationController
    skip_before_action :verify_authenticity_token, :only => [:create]
    def index
        @quiz = 
        [
            {
                :index => 10,
                :question => "Gender:",
                :answers => [
                    {:text => "Male", :tag => "male", :disables => 20},
                    {:text => "Female", :tag => "female", :enables => 20},
                ]
            }, 
            {
                :index => 20,
                :hide => true,
                :question => "Are you pregnant?",
                :answers => [
                    {:text => "Yes", :tag => "pregnant"},
                    {:text => "No"},
                ]
            },   
            {
                :index => 30,
                :question => "Which one do you prefer?",
                :answers => [
                    {:text => "outdoor activities", :tag => "outdoor"},
                    {:text => "indoor activities", :tag => "indoor"},
                ]
            },   
            {
                :index => 40,
                :question => "Do you like swimming?",
                :answers => [
                    {:text => "Yes", :tag => "swimming"},
                    {:text => "No"},
                ]
            },
            {
                :index => 50,
                :question => "Do you like team group activities?",
                :answers => [
                    {:text => "Yes", :tag => "teamgroup"},
                    {:text => "No"},
                ]
            },
        ]
    end
    
    def  create
        @params = params.permit("10","20","30","40","50")
        puts "hello there"
        puts @params
        @results = []
        @params.each do |p|
            @results.push(p[1])
        end
        render "/quiz/results"
    end
end