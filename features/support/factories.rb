require 'factory_girl'

FactoryGirl.define do
  factory :user do
    name "John"
    password BCrypt::Password.create('secret')
  end

  factory :document do
    name "doc1"
    description "some description"
  end
end

