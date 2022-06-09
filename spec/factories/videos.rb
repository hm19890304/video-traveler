FactoryBot.define do
  factory :video do
    title                 { Faker::Lorem.words }
    explanation           { Faker::Lorem.sentences }
    prefecture_id         { Faker::Number.between(from: 2, to: 47) }
    address               { Faker::Address.city }
    category_id           { Faker::Number.between(from: 2, to: 8) }
    association :user

    after(:build) do |video|
      video.movie.attach(io: File.open('public/movies/test_movie.mp4'), filename: 'test_movie.mp4')
    end
  end
end
