class Register < ApplicationRecord
  belongs_to :user
  belongs_to :tournament, optional: true
  validates :name, presence: true
  validates :email, presence: true
  validates :phone, presence: true
  validates :age, presence: true
  validates :gender, presence: true
  validates :handicap_category, presence: true

  scope :search_by_age, -> (age){where("age = ?", age)}
  scope :order_by_age, -> {order(:age)}
  scope :youngest_player, -> {where("age > ?", 18)}
  # scope :order_by_gender, -> (search_gender)(where("gender = ?", search_gender))
end
