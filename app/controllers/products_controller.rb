class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  # skip_after_action :verify_authorized, only: :new

  def index
    @products = policy_scope(Product).order(created_at: :desc)
    @products = Product.all
    @products_top_3 = Product.first(3)
    @products_last_2 = Product.last(2)
    @products_first_6 = Product.first(6)
    @products_last_6 = Product.last(6)

  end

  def show
    authorize @product
  end

  def new
    if current_user.name == ""
      redirect_to edit_user_path(current_user)
    end
    @product = Product.new
    authorize @product
  end

  def create
    @product = Product.new(product_params)
    @product.user = current_user
    if @product.save
      redirect_to product_path(@product)
      authorize @product
    else
      render :new
    end
  end

  def edit
    authorize @product
  end

  def update
    authorize @product
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  def destroy
    @product.delete
    authorize @product
    redirect_to products_path
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:price, :description, :address, :photo)
  end
end
