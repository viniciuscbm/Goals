class Goal < ApplicationRecord

  #== SCOPES ========================================
  scope :by_store_ids, -> (ids) { where(store_id: ids) }

  #== VALIDATIONS ========================================
  validates :name, presence: true, length: { in: 3..255 }
  validates :start_date, :end_date, :month_reference, presence: true
  validates :value, presence: true, numericality: true

  #== ASSOCIATIONS =========================================
  belongs_to :store
  has_many :days, dependent: :destroy
  has_many :periods, dependent: :destroy
  has_many :salesmans, through: :periods

  #== INSTANCE METHODS =====================================
  def add
    self.save!
    self.insert_periods(self.id, self.store_id)
    self.insert_days(self.id, self.start_date, self.end_date)
  end

  def insert_periods(id, store_id)
    Salesman.where(store_id: store_id).pluck(:id).each { |salesman_id| Period.create!(goal_id: id, salesman_id: salesman_id ) }
  end

  def insert_days(id, start_date, end_date)
    for i in 0..(end_date - start_date).to_i
      Day.create!(date: (Date.parse(start_date.to_s) + i), goal_id: id)
    end
  end
end
