class Favorite < ApplicationRecord

  belongs_to :user
  belongs_to :offer, counter_cache: :favorites_count
  validetes :user_id, presence: true
  validates :offer_id, presence: true
end
