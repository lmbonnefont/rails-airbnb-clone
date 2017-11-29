class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def show
  end

  private

  def set_user
    @user = current_user
  end

  def product_params
    params.require(:user).permit(:email, :name, :surname)
  end
end
