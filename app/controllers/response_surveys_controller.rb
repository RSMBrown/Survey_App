class ResponseSurveysController < ApplicationController
    before_action :authenticate_user!

    def show 
        @survey = Survey.find(params[:survey_id])
        @questions = @survey.questions.all
        @response_surveys = ResponseSurvey.all 
        authorize @response_surveys
    end 

    def new 
        @survey = Survey.find(params[:survey_id])
        @response_survey = ResponseSurvey.new 
        @question = Question.find(params[:question_id])
        authorize @response_survey
    end 

    def create 
        @survey = Survey.find(response_survey_params[:survey_id])
        @questions = @survey.questions.all
        @question = Question.find(response_survey_params[:question_id])
        @response_survey = ResponseSurvey.create(response_survey_params) 

        if @response_survey.save
            redirect_to show_path(survey_id: @survey.id)
        else 
            render :new 
        end 
        authorize @response_survey
    end 

    def result
        @survey = Survey.find(params[:survey_id])
        @questions = @survey.questions.all
        @response_surveys = ResponseSurvey.all 
        authorize @response_surveys
    end 

    private 
    def response_survey_params
        params.require(:response_survey).permit(:response, :answer_id, :survey_id, :question_id, answer_ids:[])
    end 
end
