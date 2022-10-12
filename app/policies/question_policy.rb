class QuestionPolicy < ApplicationPolicy
  attr_reader :user, :question

  def initialize(user, question)
    @user = user
    @question = question
  end

  def index? 
    user.roles == 'admin' || user.roles == 'designer'
  end
  
  def show?
    user.roles == 'admin' || user.roles == 'designer'
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
