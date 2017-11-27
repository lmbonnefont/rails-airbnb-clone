class ProductsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(user_params)
    @product.user = @user
  end

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product)

end
