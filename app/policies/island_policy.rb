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
    user_is_admin?
  end

  def update?
    user_is_admin?
  end

  def destroy?
    user_is_admin?
  end

  def user_is_admin?
    user.admin?
  end
end
