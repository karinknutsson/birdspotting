class Chat < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :receiver, class_name: 'User'

    validates :author, uniqueness: {scope: :receiver}
    has_many :direct_messages, -> { order(created_at: :asc) }, dependent: :destroy

    scope :participating, -> (user) do
      where("(chats.author_id = ? OR chats.receiver_id = ?)", user.id, user.id)
    end

    def with(current_user)
      author == current_user ? receiver : author
    end
end
