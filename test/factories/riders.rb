FactoryGirl.define do
  factory :rider do
    nickname "The Conqueror"
    email {"#{name} @westeros.com"}
  end
end
