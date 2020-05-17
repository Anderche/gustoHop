class IslandPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # Anyone can view
      scope.all
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
