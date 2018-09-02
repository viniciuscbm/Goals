class Owner < ApplicationRecord

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  has_many :stores, dependent: :destroy
end
