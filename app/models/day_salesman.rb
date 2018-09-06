class DaySalesman < ApplicationRecord

  #== ASSOCIATIONS =========================================
  belongs_to :salesman
  belongs_to :day, inverse_of: :day_salesman

  #== NESTED ATTRIBUTES ===========================================
  accepts_nested_attributes_for :day, update_only: true
end
