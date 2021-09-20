FactoryBot.define do
  factory :car do
    color { "MyString" }
    engine { "MyString" }
    year { "MyString" }
    user { nil }
  end
end
