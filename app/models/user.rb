class User < ApplicationRecord
  has_secure_password


  has_many :languages, dependent: :destroy #languageにlevelをnestするため
  accepts_nested_attributes_for :languages, allow_destroy: true
  

end
