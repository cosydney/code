class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      if user.admin?
        scope.all
      else
        scope.where(user: user)
      end
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    user == record.user or user.admin?
  end

  def destroy?
    update?
  end
end
