class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :offer

  counter_culture :offer

  validetes :user_id, presence: true
  validates :offer_id, presence: true
end
