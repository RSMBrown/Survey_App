class OptionPolicy < ApplicationPolicy

  attr_reader :user, :option

  def initialize(user, option)
    @user = user
    @option = option
  end

  def create?
    user.roles == 'admin' || user.roles == 'designer'
  end 

  class Scope < Scope
  end
end
