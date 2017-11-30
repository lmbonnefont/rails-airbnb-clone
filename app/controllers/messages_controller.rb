class MessagesController < ApplicationController
  def new
    @message = Message.new
    @message.user = current_user
    @message.product = params[:product_id]
  end

  def create
  end

  def edit
  end

  def update
  end
end
