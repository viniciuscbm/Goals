FactoryBot.define do
  factory :user do
    email { Faker::Internet.unique.email }
    password { Faker::Number.number(8) }
  end
end
