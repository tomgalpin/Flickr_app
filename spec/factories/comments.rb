# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :comment do
    content "MyText"
    author 1
    commentable_type "MyString"
    commentable_id 1
  end
end
