class Day < ApplicationRecord

  #== ASSOCIATIONS =========================================
  belongs_to :goal
  has_many :day_salesman, dependent: :destroy
  has_many :salesmans, through: :day_salesman
end
