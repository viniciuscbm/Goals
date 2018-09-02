FactoryBot.define do
  factory :period do
    association :salesman
    association :goal
  end
end
