# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email "test@gmail.com"
    username 'user_name'
    password '123456789'
    confirmed_at Time.now
  end
end
