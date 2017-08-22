FactoryGirl.define do
  factory :article do
    title { Faker::Hipster.sentence }
    content { Faker::Lorem.paragraph }
    sequence(:date) { |n| Date.today + n }

    trait :unpublished do
      status 0
    end

    trait :published do
      status 1
    end
  end
end
