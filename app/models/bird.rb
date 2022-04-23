class Bird < ApplicationRecord
  has_many :spots
  has_one_attached :image

  validates :name, presence: true, uniqueness: { case_sensitive: false }
  validates :latin_name, presence: true, uniqueness: true
end
