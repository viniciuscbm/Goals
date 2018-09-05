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

  #== CALLBACKS ===========================================
  after_create :create_periods, :create_days
  after_update :update_days, :create_days

  #== PRIVATE METHODS =====================================
  private

  def create_periods
    Salesman.where(store_id: self.store_id).pluck(:id).each { |salesman_id| Period.create!(goal_id:self.id, salesman_id: salesman_id ) }
  end

  def create_days
    for i in 0..(self.end_date - self.start_date).to_i
      unless Day.joins(:goal).exists?(date: (Date.parse(self.start_date.to_s) + i), goals: {store_id: self.store_id})
        Day.create!(date: (Date.parse(self.start_date.to_s) + i), goal_id: self.id)
      else
        raise "Já existe uma meta para um ou mais dias que foram escolhidos."
      end
    end
  end

  def update_days
    self.days.destroy_all
  end
end
