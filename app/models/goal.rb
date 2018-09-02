class Goal < ApplicationRecord

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }
  validates :start_date, :end_date, :month_reference, presence: true
  validates :value, presence: true, numericality: true

  #== ASSOCIATIONS =========================================
  belongs_to :store
  has_many :days, dependent: :destroy
  has_many :periods, dependent: :destroy
  has_many :salesmans, through: :periods
end
