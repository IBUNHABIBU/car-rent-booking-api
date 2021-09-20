FactoryBot.define do
  factory :car do
    color { "MyString" }
    engine { "MyString" }
    year { "MyString" }
    admin_user { nil }
  end
end
