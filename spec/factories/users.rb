FactoryBot.define do
  factory :user do
    name { FFaker::NameBR.first_name  }
    email { FFaker::Internet.email }
    role { 0 }
  end
end
