class User < ApplicationRecord
  has_secure_password
  validates :nickname, presence: true
  validates :mail, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }


  has_many :user_language_levels, foreign_key: 'user_id'
  has_many :languages, through: :user_language_levels,
  dependent: :destroy  #languageにlevelをnestするため
  accepts_nested_attributes_for :user_language_levels, allow_destroy: true, reject_if: :all_blank

  has_many :offers

end
