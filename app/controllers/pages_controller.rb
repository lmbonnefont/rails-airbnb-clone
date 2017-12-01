class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  after_action :verify_authorized, except: :home, unless: :skip_pundit?
  after_action :verify_policy_scoped, except: :home, unless: :skip_pundit?

  def home
    @products = policy_scope(Product).order(created_at: :desc)
    @products = Product.where(availability: true)
  end
end
