FactoryBot.define do
  factory :user do
    password 'password'
    sequence(:email) do |n|
      "user#{n}@email.com"
    end
  end
end
