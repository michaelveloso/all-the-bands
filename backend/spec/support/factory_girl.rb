require 'factory_girl'

FactoryGirl.define do
  factory :band do
    sequence(:name) { |n| "name#{n}" }
    year_formed 1986
    year_disbanded 1999
    website "www.thisband.com"
  end
end
