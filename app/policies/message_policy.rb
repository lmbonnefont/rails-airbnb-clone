class MessagePolicy < ApplicationPolicy

  def new?
    user.present?
  end

  def show?
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
