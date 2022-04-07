class User < ApplicationRecord
  attr_writer :login

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :spots, dependent: :destroy
  has_one_attached :avatar, dependent: :destroy

  has_many :authored_chats, class_name: 'Chat', foreign_key: 'author_id'
  has_many :received_chats, class_name: 'Chat', foreign_key: 'received_id'
  has_many :direct_messages, dependent: :destroy

  validates :username, :email, presence: true, uniqueness: { case_sensitive: false }
  validates_format_of :username, with: /^[a-zA-Z0-9_\.]*$/, :multiline => true
  validates :username, length: { in: 2..15 }

  validate :validate_username

  def validate_username
    if User.where(email: username).exists?
      errors.add(:username, :invalid)
    end
  end

  def login
    @login || self.username || self.email
  end

  def self.find_for_database_authentication(warden_conditions)
    conditions = warden_conditions.dup

    # conditions[:email].downcase! if conditions[:email]
    # where(conditions.to_h).first

    if login = conditions.delete(:login)
      where(conditions.to_h).where(["lower(username) = :value OR lower(email) = :value", { :value => login.downcase }]).first
    elsif conditions.has_key?(:username) || conditions.has_key?(:email)
      where(conditions.to_h).first
    end
  end
end
