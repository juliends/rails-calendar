FactoryGirl.define do
  factory :article do
    title { Faker::Hipster.sentence }
    content { Faker::Lorem.paragraph }
    sequence(:date) { |n| Date.today + n }
    status { 0 }

    trait :published do
      status 1
    end
  end
end
