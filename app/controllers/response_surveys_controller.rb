class ResponseSurveysController < ApplicationController
    before_action :authenticate_user!

    def create 
        @survey = Survey.find(params[:survey_id])
        @response_survey = @survey.response_surveys.create 
        @response_survey.save 
        authorize @response_survey
    end 

    def complete_survey 
        @survey = Survey.find(params[:survey_id])
        @questions = @survey.questions.all 
        @response_survey = @survey.response_surveys.find(params[:id])
        question_ids = Answer.where(response_survey_id: @response_survey, question_id: question_ids).pluck(:question_id)
        all_ids = @questions.pluck(:id)
        unanswered_questions = all_ids - question_ids 
        if unanswered_questions.blank?
            flash[:success] = "Survey Completed!"
            redirect_to surveys_path
        else 
            @question = Question.find(unanswered_questions.first)
        end 
    end 

    def result
        @survey = Survey.find(params[:survey_id])
        @questions = @survey.questions.all
        authorize @response_surveys
    end 
end
