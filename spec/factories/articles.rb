FactoryGirl.define do
  factory :article do
    title { Faker::Hipster.sentence }
    content { Faker::Lorem.paragraph }
    sequence(:date) { |n| Date.today + n }

    trait :unpublished do
      published false
    end

    trait :published do
      published true
    end
  end
end
