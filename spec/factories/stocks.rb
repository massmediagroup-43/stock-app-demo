FactoryBot.define do
  factory :stock do
    name { FFaker::Lorem.sentence }
    duration { rand(1..12) }
    price { rand(1..20) * 1000 }
    interest 5
    user
  end
end
