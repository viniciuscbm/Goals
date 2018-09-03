class Store < ApplicationRecord

  #== SCOPES ========================================
  scope :by_owner_id, -> (id) { where(owner_id: id) }

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  belongs_to :owner
  has_many :salesmans, dependent: :destroy
  has_many :goals, dependent: :destroy
end
