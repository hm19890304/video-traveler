FactoryBot.define do
  factory :user do
    name                  { Faker::Name.name }
    prefecture_id         { Faker::Number.between(from: 2, to: 47)}
    password              { Faker::Lorem.characters(number: 6, min_alpha: 1, min_numeric: 1) }
    password_confirmation { password }
  end
end
