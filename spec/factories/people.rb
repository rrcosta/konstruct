FactoryBot.define do
  factory :person do
    name { Faker::Name.name  }
    kind_document { "cpf" }
    document { Faker::CPF.number }
    email { Faker::Internet.email }
  end
end
