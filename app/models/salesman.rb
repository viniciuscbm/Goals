class Salesman < ApplicationRecord

  #== SCOPES ========================================
  scope :by_store_ids, -> (ids) { where(store_id: ids) }

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  belongs_to :store
  has_many :periods, dependent: :destroy
  has_many :goals, through: :periods
  has_many :day_salesman, dependent: :destroy
  has_many :days, through: :day_salesman
end
