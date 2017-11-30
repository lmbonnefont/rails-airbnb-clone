class MessagesController < ApplicationController
  def new
    authorize @message = Message.new
  end

  def create
    authorize @message = Message.new( :content => [])
    @message.content += [message_params[:content]]
    @message.user = current_user
    @message.product = Product.find(params[:product_id])
    @message.save
    redirect_to product_message_path(params[:product_id], @message)
  end

  def edit
    authorize @message = Message.new
  end

  def update
    authorize @message = Message.new
  end

  def show
    @message = Message.find(params[:id])
    authorize @message = Message.find(params[:id])
  end

  def index
    authorize @message = Message.new
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
