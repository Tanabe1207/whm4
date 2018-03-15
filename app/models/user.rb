class User < ApplicationRecord
  has_secure_password

  has_many :languages, dependent: :destroy
end
