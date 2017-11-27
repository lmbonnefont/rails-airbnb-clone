class ProductsController < ApplicationController
  before_action :set_user, only: [:new, :create]

  def index
    @products = Product.all
  end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(user_params)
    @product.user = @user
    if @product.save
      redirect_to product_path(@product)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @product = Product.find(params[:id])
    @product.delete
  end

  private

  def set_user
    @user = User.find(params[:user_id])
  end

  def product_params
    params.require(:product)

end
