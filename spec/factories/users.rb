FactoryBot.define do
  factory :user do
    _account = Faker::Internet.username

    name {Faker::Name.name}
    sequence(:account) {|n|"#{n}_#{Faker::Internet.email}"}
    sequence(:email) {|n|"#{n}_#{Faker::Internet.email}"} 
    trait :with_user_detail do
      
      user_detail
    end
  end
end
