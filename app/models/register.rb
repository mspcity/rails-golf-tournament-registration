class Register < ApplicationRecord
  belongs_to :user
  belongs_to :tournament, optional: true

  scope :order_by_age, -> {order(:age)}
  scope :youngest_player, -> {where("age > ?", 18)}
  # scope :search_by_gender, -> (search_gender)(where("gender = ?", search_gender))
end
