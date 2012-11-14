FactoryGirl.define do
  factory :user do
    email                 "mbrown@yahoo.com"
    password              "foobar"
    password_confirmation "foobar"
    confirmed_at           Time.now
  end 
end