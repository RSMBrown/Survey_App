class OptionsController < ApplicationController
    def new 
        @question = Question.find(params[:question_id])
        @option = @question.options.new
        authorize @option 
    end 

    def create 
        @question = Question.find(option_params[:question_id])
        @option = @question.options.create(option_params)

        if @option.save
            redirect_to @question
        else 
            render :new 
        end 
        authorize @option
    end 

    private 
    def option_params
        params.require(:option).permit(:choice, :question_id)
    end 
end
