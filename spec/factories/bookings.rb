FactoryBot.define do
  factory :booking do
    name { 'Juma' }
    model { 'New model' }
    pickup { '2021-10-17 12:00' }
    return_date { '2021-10-18 12:00' }
    location { 'Mwanza' }
    user
  end
end
