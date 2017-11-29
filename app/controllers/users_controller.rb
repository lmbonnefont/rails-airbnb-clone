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
    redirect_to params[:user][:path]
  end

  private

  def set_user
    @user = current_user
  end

  def product_params
    params.require(:user).permit(:email, :name, :surname, :age, :company_name, :failure_history :password)
  end
end
