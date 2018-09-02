class Salesman < ApplicationRecord

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  belongs_to :store
  has_many :periods, dependent: :destroy
  has_many :goals, through: :periods
  has_and_belongs_to_many :days
end
