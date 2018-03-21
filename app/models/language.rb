class Language < ApplicationRecord

  has_many :user_language_levels, foreign_key:'language_id'
  has_many :users, through: :user_language_levels
  accepts_nested_attributes_for :user_language_levels

end
