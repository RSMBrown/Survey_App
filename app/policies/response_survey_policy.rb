class ResponseSurveyPolicy < ApplicationPolicy
  attr_reader :user, :response_survey

  def initialize(user, response_survey)
    @user = user
    @response_survey = response_survey
  end

  def show?
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end 

  def new?
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end 

  def create?
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end 

  def result?
    user.roles == 'admin' || user.roles == 'designer' 
  end 


  class Scope < Scope


  end
end
