FactoryBot.define do
  factory :salesman do
    name { Faker::Name.name }
    association :store
  end
end
