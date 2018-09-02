FactoryBot.define do
  factory :store do
    name { Faker::Name.name }
    association :owner
  end
end
