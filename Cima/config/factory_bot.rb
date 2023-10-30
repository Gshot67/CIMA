FactoryBot.define do
    factory :user do
      password { "123456" }
      email { "john@example.com" }
      # Altri attributi del modello User
    end
  end