class Day < ApplicationRecord

  #== ASSOCIATIONS =========================================
  belongs_to :goal
  has_many :day_salesman, dependent: :destroy, inverse_of: :day
  has_many :salesmans, through: :day_salesman

  #== NESTED ATTRIBUTES ===========================================
  accepts_nested_attributes_for :day_salesman, update_only: true
end
