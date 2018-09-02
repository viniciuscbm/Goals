FactoryBot.define do
  factory :owner do
    name { Faker::Name.name }
    association :user
  end
end
