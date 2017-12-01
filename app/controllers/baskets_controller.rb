class BasketsController < ApplicationController
  def show
    @user = current_user
    @products = Product.all
    authorize @user
    authorize @products
  end

  def update
    @product = Product.find(params[:product])
    # authorize @product, :update?
    @product.basket = current_user.basket
    @product.save
    skip_authorization
  end

  def pay
    @basket = Basket.find(params[:id])
    @basket_products = Product.where(basket: @basket)
    @user = current_user
    authorize @basket
    authorize @basket_products
    authorize @user
  end
end
