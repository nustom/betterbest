# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal_activity do
    period Time.now
  end
end
