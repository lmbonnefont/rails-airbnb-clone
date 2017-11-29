class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
    authorize @user
  end

  def edit
    authorize @user
    @path = request.referer
  end

  def update
    authorize @user

    @user.update(product_params)
    redirect_to request.path
  end

  private

  def set_user
    @user = current_user
  end

  def product_params
    params.require(:user).permit(:email, :name, :surname, :password)
  end
end
