
Article.destroy_all

10.times do |i|
  Article.create!(
    title: Faker::Hipster.sentence, 
    content: Faker::Lorem.paragraph, 
    date: Date.today + i, 
    published: [true, false].sample
  )
end