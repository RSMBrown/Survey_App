class SurveyPolicy < ApplicationPolicy
  attr_reader :user, :survey

  def initialize(user, survey)
    @user = user
    @survey = survey
  end

  def index? 
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end
  
  def show?
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end 

  def new?
    user.roles == 'admin' || user.roles == 'designer'
  end 

  def create?
    user.roles == 'admin' || user.roles == 'designer'
  end 

  def edit?
    user.roles == 'admin' || user.roles == 'designer'
  end 

  def update?
    user.roles == 'admin' || user.roles == 'designer'
  end 

  def destroy?
    user.roles == 'admin' || user.roles == 'designer'
  end 
  class Scope < Scope

  end
end
