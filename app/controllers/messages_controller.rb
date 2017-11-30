class MessagesController < ApplicationController
  def new
    authorize @message = Message.new
    @message.user = current_user
    @message.product = Product.find(params[:product_id])
  end

  def create
  end

  def edit
  end

  def update
  end
end
