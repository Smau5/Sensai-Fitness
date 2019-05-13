class SearchPlansController < ApplicationController
    def index
        @tags = Tag.all
        @tag_ids = params[:tag_ids]
        if !@tag_ids.nil?
            @plans = Plan.joins(:tags).where(tags: { id: @tag_ids }).distinct
        else
            @tag_ids = []
            @plans = Plan.all
        end
        if !params[:min].nil? and params[:min] != ""
            @min = params[:min].to_f
        else
            @min = 0
        end
        if !params[:max].nil? and params[:min] != ""
            @max = params[:max].to_f
        else
            @max = 9999999999999999999
        end

        @plans = @plans.where(price: @min..@max)
    end
    def search_plan_params
        params.permit(:tag)
    end
end
