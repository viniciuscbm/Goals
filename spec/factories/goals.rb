FactoryBot.define do
  factory :goal do
    name { Faker::Name.name }
    start_date { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }
    end_date { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }
    month_reference { Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today) }
    value { Faker::Number.decimal(2) }
    association :store
  end
end
