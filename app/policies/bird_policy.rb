class BirdPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    true
  end

  def create?
    true
  end

  def new?
    create?
  end

  def daily?
    true
  end

  def found?
    true
  end

  def not_found?
    true
  end
end
