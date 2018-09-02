class Store < ApplicationRecord

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  belongs_to :owner
  has_many :salesmans
  has_many :goals
end
