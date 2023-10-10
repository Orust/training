FactoryBot.define do
  factory :user do
    name { |n| "FactoryName#{n}" }
    email { |n| "factory#{n}" + "@example" + ".com" }
  end
end
