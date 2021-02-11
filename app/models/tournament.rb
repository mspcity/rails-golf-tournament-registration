class Tournament < ApplicationRecord
  has_many :registers
  has_many :users, through: :registers

  scope :order_by_tournament_name, -> {order(:name)}

  
end
