class Day < ApplicationRecord

  #== ASSOCIATIONS =========================================
  belongs_to :goal
  has_and_belongs_to_many :salesmans
end
