class User < ApplicationRecord
  has_secure_password
  has_many :registers
  has_many :tournaments, through: :registers
  validates :email, presence: true
  validates :email, uniqueness: true

  # scope :order_by_email, -> {order(:email)}


  def self.find_or_create_from_omniauth(user_info)
    User.first_or_create(uid: user_info["uid"]) do |user|
      user.email = user_info["info"]["nickname"] + "@something.com"
      user.password = SecureRandom.hex
    end

  end
end
