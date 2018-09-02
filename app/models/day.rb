class Day < ApplicationRecord

  #== VALIDATIONS ========================================
  validates :date, uniqueness: true
  validates :value, numericality: true

  #== ASSOCIATIONS =========================================
  belongs_to :goal
  has_and_belongs_to_many :salesmans
end
