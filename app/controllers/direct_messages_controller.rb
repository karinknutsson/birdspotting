class DirectMessagesController < ApplicationController
  before_action :find_chat!
  
  def new
    redirect_to chats_path(@chat) and return if @chat
    @direct_message = current_user.direct_messages.build
    authorize @direct_message
  end

  def create
    @chat ||= Chat.create(author_id: current_user.id, receiver_id: @receiver.id)
    @direct_message = current_user.direct_messages.build(direct_message_params)
    authorize @direct_message
    @direct_message.chat_id = @chat.id
    @direct_message.save!

    flash[:success] = "Your message was sent!"
    redirect_to chat_path(@chat)
  end
  
  private

  def direct_message_params
    params.require(:direct_message).permit(:body)
  end

  def find_chat!
    if params[:receiver_id]
      @receiver = User.find_by(id: params[:receiver_id])
      redirect_to(chats_path) and return unless @receiver
      @chat = Chat.between(current_user.id, @receiver.id)[0]
    else
      @chat = Chat.find_by(id: params[:chat_id])
      redirect_to(chats_path) and return unless @chat && @chat.participates?(current_user)
    end
  end
end
