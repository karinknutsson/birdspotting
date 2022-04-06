class ChatsController < ApplicationController
    before_action :set_chat, except: [:index]
    before_action :check_participating!, except: [:index]

    def index
      @chats = chat.participating(current_user).order('updated_at DESC')
      policy_scope @chats
    end

    def show
      @direct_message = DirectMessage.new
      authorize @direct_message
    end

    private

    def set_chat
      @chat = chat.find_by(id: params[:id])
    end

    def check_participating!
      redirect_to root_path unless @chat && @chat.participates?(current_user)
    end

    def participates?(user)
      author == user || receiver == user
    end
end
