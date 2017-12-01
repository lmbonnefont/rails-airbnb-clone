class MessagesController < ApplicationController
  def new
    authorize @message = Message.new
    @message.user = current_user
    @message.product = Product.find(params[:product_id])
    @message.save
    redirect_to new_product_message_reponse_path(params[:product_id], @message)
  end

  def show
    authorize @message = Message.find(params[:id])
    current_user.new_message = 0
    current_user.save
    if current_user == @message.product.user
      @message.new_message_seller = 0
    else
      @message.new_message_buyer = 0
    end
    @message.save
  end

  def index
    # @messages = policy_scope(Message).where("user_id = ?", current_user)
    @messagesasbuyer = policy_scope(Message).where("user_id = ?", current_user)
    myproducts = policy_scope(Product).where("user_id = ?", current_user)
    @myproductswithmessages =  myproducts.select {|p| p.message != nil}
    # @messages = []
    # @messages << messagereceived
    # @messages << messagesinitiated
  end

end
