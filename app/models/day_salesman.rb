class DaySalesman < ApplicationRecord

  #== ASSOCIATIONS =========================================
  belongs_to :salesman
  belongs_to :day
end
