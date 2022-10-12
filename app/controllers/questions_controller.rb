class QuestionsController < ApplicationController
    before_action :authenticate_user!
    def index 
        @questions = Question.all 
        authorize @questions
    end 

    def show 
        @question = Question.find(params[:id])
        authorize @question
    end 

    def new 
        @question = Question.new 
        @survey = Survey.find(params[:survey_id])
        authorize @question
    end 

    def create 
        @question = Question.new(question_params)
        @survey = Survey.find(question_params[:survey_id])

        if @question.save!
            redirect_to @question
        else 
            render :new 
        end 
        authorize @question
    end 

    def edit 
        @question = Question.find(params[:id])
        @survey = Survey.find(params[:survey_id])
        authorize @question
    end 

    def update 
        @question = Question.find(params[:id])
        @survey = Survey.find(question_params[:survey_id])

        if @question.update(question_params)
            redirect_to @question 
        else 
            render :edit 
        end 
        authorize @question
    end 

    def destroy 
        @question = Question.find(params[:id])
        @question.destroy 

        redirect_to surveys_path 
        authorize @question
    end 

    private 
    def question_params
        params.require(:question).permit(:main_question, :survey_id, :question_type)
    end 
end
