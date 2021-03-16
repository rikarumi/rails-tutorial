class User < ApplicationRecord
  validates :name, :email, presence: true
  has_many :ideas, dependent: :destroy

  has_secure_password
end
