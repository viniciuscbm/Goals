class Owner < ApplicationRecord

  scope :by_user_id, -> (id) { where(user_id: id) }

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }

  #== ASSOCIATIONS =========================================
  belongs_to :user
  has_many :stores, dependent: :destroy
end
