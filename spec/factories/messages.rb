FactoryBost.define do
  factory :message do
    content             {Faker::lorem.sentence}
    image               {File.open("#{rails.root")/public/images/test_images.jpg}
    user_id             {}
    group_id            {}
  end
end