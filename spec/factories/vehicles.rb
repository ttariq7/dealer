# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :vehicle do
    name "MyString"
    user_id 1
    mileage "MyString"
    description "MyText"
    year "MyString"
    transmission "MyString"
    doors "MyString"
    fuel "MyString"
    engine "MyString"
    colour "MyString"
    body "MyString"
    model "MyString"
    make "MyString"
    price "MyString"
    status "MyString"
  end
end
