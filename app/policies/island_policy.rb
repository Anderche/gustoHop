class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view
      scope.all

      # Only owner can view >> throws an error >> probably need to add user_id foreign key to Island model
      # scope.where(user: user)
    end
  end

  def show?
    return true
  end

  def new?
    return true
  end

  def create?
    return true
  end
end
