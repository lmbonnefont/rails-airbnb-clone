class ProductPolicy < ApplicationPolicy
  def new?
    true if user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
