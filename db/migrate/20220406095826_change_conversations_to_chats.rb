class ChangeConversationsToChats < ActiveRecord::Migration[6.0]
  def change
    rename_table :conversations, :chats
  end
end
