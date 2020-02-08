FactoryBot.define do
  factory :user, aliases: [:owner] do
    first_name "Geo"
    last_name "Fra"
    sequence(:email) { |n| "test#{n}@test.com" }
    password "123456"
  end
end
