class ReponsesController < ApplicationController
  def new
    authorize @reponse = Reponse.new
  end

  def create
    authorize @reponse = Reponse.new()
    if params[:message]
      @reponse.texte = message_params[:content]
    else
      @reponse.texte = reponse_params[:texte]
    end
    @reponse.user = current_user
    @reponse.message = Message.find(params[:message_id])
    if current_user == @reponse.message.user
      @reponse.message.new_message_seller = @reponse.message.new_message_seller+ 1
      @reponse.message.save
      @reponse.message.product.user.new_message = @reponse.message.product.user.new_message + 1
      @reponse.message.product.user.save
    else
      @reponse.message.new_message_buyer = @reponse.message.new_message_buyer + 1
      @reponse.message.save
      @reponse.message.user.new_message = @reponse.message.user.new_message + 1
      @reponse.message.user.save
    end
    @reponse.save
    redirect_to product_message_path(params[:product_id], @reponse.message)
  end


  private

  def reponse_params
    params.require(:reponse).permit(:texte)
  end

  def message_params
    params.require(:message).permit(:content)
  end
end
