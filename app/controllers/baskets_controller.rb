class BasketsController < ApplicationController
  def show
    authorize @basket = Basket.new
  end
end
