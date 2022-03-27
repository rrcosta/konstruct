FactoryBot.define do
  factory :address do
    person
    street { FFaker::AddressBR.street }
    number { FFaker::Number.number(digits: 2) }
    neighborhood { FFaker::AddressBR.neighborhood }
    complement { ' ' }
    city { FFaker::AddressBR.city }
    state { FFaker::AddressBR.state }
    postcode { FFaker::AddressBR.zipcode }
  end
end
