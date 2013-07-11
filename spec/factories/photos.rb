# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :photo do
    name "In the Sun"
    album_id 1
    # url File.open(Fil.join(Rails.root, '/public/Test.jpg'))
    # This simulates the opening of the whole image and all of its info.
  end
end
