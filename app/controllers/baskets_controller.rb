class BasketsController < ApplicationController
  def show
    @user = current_user
    @products = Product.all
    authorize @user
    authorize @products
  end

  def update
    @product = Product.find(params[:product])
    @product.basket = current_user.basket
    @product.save
    authorize @product
  end
end
