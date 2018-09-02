class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #== VALIDATIONS ========================================
  has_one :owner, dependent: :destroy

  #== ENUMS ========================================
  enum role:  %i[admin owner]
end

