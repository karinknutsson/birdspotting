class Bird < ApplicationRecord
  has_many :spots
  has_one_attached :image
end
