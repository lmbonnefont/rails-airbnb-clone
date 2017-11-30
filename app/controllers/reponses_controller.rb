class ReponsesController < ApplicationController
  def new
    authorize @reponse = Reponse.new
  end

  def create
    if params[:message]
      authorize @reponse = Reponse.new()
      @reponse.texte = message_params[:content]
    else
      authorize @reponse = Reponse.new()
      @reponse.texte = reponse_params[:texte]
    end
    @reponse.user = current_user
    @reponse.message = Message.find(params[:message_id])
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
