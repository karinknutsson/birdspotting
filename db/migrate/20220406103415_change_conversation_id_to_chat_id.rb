class ChangeConversationIdToChatId < ActiveRecord::Migration[6.0]
  def change
    rename_column :direct_messages, :conversation_id, :chat_id
  end
end
