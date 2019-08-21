class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # inside the policy files:
  # user = current_user
  # record = instance variable (argument passed to authorize in relative controller)


  def index?
    return true
  end

  # def new?
  #   return true
  # end


  def create?
    return true
  end

  def show?
    true
  end

  def edit?
    #if I craeted the restaurant, I am allowed to edit the restaurant
    #else I can't
    record.user == user
  end
end
