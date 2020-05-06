class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view
      scope.all

      # scope.where(user: user)
      # Only owner can view >> throws an error >> probably need to add user_id foreign key to Island model
    end
  end

  def show?
    return true
  end

  def create?
    return true
  end

  def update?
    return true
  end
end
