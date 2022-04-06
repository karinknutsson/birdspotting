class DirectMessagesController < ApplicationController
  before_action :find_chat!

  def create
    @direct_message = current_user.direct_messages.build(direct_message_params)
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
    @chat = chat.find_by(id: params[:chat_id])
    redirect_to(messages_path) and return unless @chat && @chat.participates?(current_user)
  end
end
