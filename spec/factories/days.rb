FactoryBot.define do
  factory :day do
    date { Faker::Date.unique.between_except(1.year.ago, 1.year.from_now, Date.today) }
    value { Faker::Number.decimal(2) }
    association :goal
  end
end
