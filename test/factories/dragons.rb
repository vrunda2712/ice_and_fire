FactoryGirl.define do
  factory :dragon do
    name {['Trogdor', 'Meraxes'].sample
    sequence(:name) { |num| "Dragon #{num}" }
    appetite 'Small'
    age { (1..100).to_a.sample }

    trait :ancient do
      age 500
      appetite "Large"
    end

    rider

  end
end
