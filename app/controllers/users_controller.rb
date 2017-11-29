class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  def edit
  end

  def update
    @user.update(product_params)
    redirect_to new_product_path
  end

  private

  def set_user
    @user = current_user
  end

  def product_params
    params.require(:user).permit(:email, :name, :surname, :password)
  end
end
