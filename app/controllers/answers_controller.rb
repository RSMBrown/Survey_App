class AnswersController < ApplicationController
    before_action :authenticate_user!

    def new 
        @answer = Answer.new 
        @question = Question.find(params[:question_id])
        authorize @answer
    end 

    def create 
        @answer = Answer.new(answer_params)
        @question = Question.find(answer_params[:question_id])

        if @answer.save
            redirect_to @question
        else 
            render :new 
        end 
        authorize @answer
    end 

    def edit 
        @answer = Answer.find(params[:id])
        @question = Question.find(params[:question_id])
        authorize @answer
    end 

    def update 
        @answer = Answer.find(params[:id])
        @question = Question.find(answer_params[:question_id])

        if @answer.update(answer_params)
            redirect_to @question 
        else 
            render :edit 
        end 
        authorize @answer
    end 

    def destroy 
        @answer = Answer.find(params[:id])
        @answer.destroy 

        redirect_to surveys_path 
        authorize @answer
    end 

    private 
    def answer_params
        params.require(:answer).permit(:choice, :question_id)
    end 
end
