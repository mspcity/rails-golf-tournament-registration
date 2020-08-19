class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_secure_password
  has_many :registers
  has_many :tournaments, through: :registers
end
