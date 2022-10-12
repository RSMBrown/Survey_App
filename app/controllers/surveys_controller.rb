class SurveysController < ApplicationController
    before_action :authenticate_user!
    def index 
        @surveys = Survey.all 
        authorize @surveys
    end 

    def show 
        @survey = Survey.find(params[:id])
        authorize @survey
    end 

    def new 
        @survey = Survey.new 
        authorize @survey
    end 

    def create 
        @survey = Survey.new(survey_params)

        if @survey.save 
            redirect_to @survey
        else 
            render :new 
        end 
        authorize @survey
    end 

    def edit 
        @survey = Survey.find(params[:id])
        authorize @survey
    end 

    def update 
        @survey = Survey.find(params[:id])

        if @survey.update(survey_params)
            redirect_to @survey 
        else 
            render :edit 
        end 
        authorize @survey
    end 

    def destroy 
        @survey = Survey.find(params[:id])
        @survey.destroy 

        redirect_to surveys_path 
        authorize @survey
    end 

    private 
    def survey_params
        params.require(:survey).permit(:title)
    end 
end
