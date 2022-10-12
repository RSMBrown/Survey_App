class AnswerPolicy < ApplicationPolicy
  attr_reader :user, :answer

  def initialize(user, answer)
    @user = user
    @answer = answer
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
