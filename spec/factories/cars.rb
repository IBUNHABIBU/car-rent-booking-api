FactoryBot.define do
  factory :car do
    color { 'Red' }
    engine { 'v8' }
    year { '2021' }
    car_model { 'New model' }
    price { '2300usd' }
    user
  end
end
