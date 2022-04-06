FactoryBot.define do
  factory :person do
    user
    name { FFaker::NameBR.first_name  }
    kind_document { "cpf" }
    document { FFaker::IdentificationBR.cpf }
    email { FFaker::Internet.email }
  end
end
