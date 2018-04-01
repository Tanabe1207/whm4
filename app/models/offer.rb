class Offer < ApplicationRecord
  mount_uploader :offer_image, ImageUploader
  validates :user_id, presence: true
  validates :country, presence: true
  # validates :state, presence: true
  # validates :region, presence: true
  validates :period_from, presence: true
  validates :period_to, presence: true
  validates :title, presence: true
  validates :detail, presence: true
  validates :offer_image, presence: true

  belongs_to :user

  mount_uploader :offer_image, ImageUploader

  has_many :favorites, dependent: :destrooy #userがいなくなった時に自動的に言いいねも削除
  has_many :favorite_users, through: :favorites, source:'user'

  def kininaru(user)
    favorites.create(user_id: user.id)
  end
  # user_idを引数user.idで定義→favoriteモデルのuser_idをcreateするメソッド。

  def unkininaru(user)
    favorites.find_by(user_id: user.id).destroy
  end

  def kininaru?(user)
    favorite_users.include?(user)
  end

end

# t.integer: user_id
# t.string: country
# t.string: state
# t.string: region
# t.integer: period_from
# t.integer: period_to
# t.string: title
# t.string: detail
# t.string: offer_image
