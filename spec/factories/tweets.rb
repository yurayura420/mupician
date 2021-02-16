FactoryBot.define do
  factory :tweet do
    musician {'a'}
    music {'a'}
    text {Faker::Lorem.sentence}
    image {Faker::Lorem.sentence}
    association :user 
    after(:build) do |tweet|
      tweet.audio.attach(io: File.open('public/audio/test_audio.mp3'), filename: 'test_audio.mp3')
    end
  end
end
