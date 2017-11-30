class MessagesController < ApplicationController
  def new
    authorize @message = Message.new
    @message.user = current_user
    @message.product = Product.find(params[:product_id])
    @message.save
    redirect_to new_product_message_reponse_path(params[:product_id], @message)
  end

  def create
  end

  def edit
  end

  def update
  end

  def show
    authorize @message = Message.find(params[:id])
  end

end
