# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :goal do
    period Time.now
    month_of_period Time.now.month
    year_of_period Time.now.year
  end
end
