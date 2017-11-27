class ProductsController < ApplicationController
  before_action :set_product, only: [:new, :create]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    @product
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

  def set_product
    @product = Product.find(params[:user_id])
  end

end
