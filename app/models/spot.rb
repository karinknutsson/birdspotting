class Spot < ApplicationRecord
  belongs_to :bird
  belongs_to :user
end
