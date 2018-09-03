class StorePolicy < ApplicationPolicy

  def index
    user.admin? || user.owner?
  end

  def show
    user.admin? || user.owner?
  end

  def new?
    user.admin? || user.owner?
  end

  def edit?
    user.admin? || user.owner?
  end

  def create?
    user.admin? || user.owner?
  end

  def update?
    user.admin? || user.owner?
  end

  def destroy?
    user.admin? || user.owner?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
