class Spot < ApplicationRecord
  belongs_to :bird
  belongs_to :user

  has_many_attached :photos, dependent: :destroy

  validates :bird_id, presence: true
  validates :number, presence: true

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
end
