class BasketPolicy < ApplicationPolicy
  def show?
    user.present?
  end

  def pay?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope
    end
  end
end
