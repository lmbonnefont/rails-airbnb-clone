class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: :index

  # skip_after_action :verify_authorized, only: :new

  def index
    @products = policy_scope(Product).order(created_at: :desc)
    @products = Product.where(availability: true)
  end

  def show
    authorize @product
    @product = Product.find(params[:id])
    @user = @product.user

    @marker = [{
        lat: @user.latitude,
        lng: @user.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }]
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
    @product.availability = true
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
    params.require(:product).permit(:title, :quick_description, :price, :description, :photo)
  end
end
