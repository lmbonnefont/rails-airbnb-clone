class BasketsController < ApplicationController
  def show
    @user = current_user
    @products = Product.all
    authorize @user
    authorize @products
  end
end
