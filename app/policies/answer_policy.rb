class AnswerPolicy < ApplicationPolicy
  attr_reader :user, :answer

  def initialize(user, answer)
    @user = user
    @answer = answer
  end

  def create?
    user.roles == 'admin' || user.roles == 'designer' || user.roles == 'taker'
  end 

  class Scope < Scope

  end 
end
