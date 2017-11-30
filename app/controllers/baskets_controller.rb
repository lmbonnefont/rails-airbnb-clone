class BasketsController < ApplicationController
  def show
    authorize Basket.new
  end
end
