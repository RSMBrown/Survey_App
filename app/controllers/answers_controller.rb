class AnswersController < ApplicationController
    before_action :authenticate_user!

    def create 
        @answer = Answer.new(answer_params)
        @question = Question.find(answer_params[:question_id])
        @survey = Survey.find(params[:survey_id])
        @response_survey = ResponseSurvey.find(params[:response_survey_id])

        if @answer.save
            flash[:success] = "Question Saved!"
            redirect_to complete_survey_response_survey_path(id: @response_survey.id, survey_id: @survey.id)
        else 
            flash[:alert] = "Question creation failed"
        end 
        authorize @answer
    end 

    private 
    def answer_params
        params.permit(:choice, :multi, :question_id, option_ids: [])
    end 
end
