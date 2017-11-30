class MessagePolicy < ApplicationPolicy

  def new?
    user.present?
  end

  def create?
    user.present?
  end

  def edit?
    user.present?
  end

  def update?
    user.present?
  end

  def index?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
