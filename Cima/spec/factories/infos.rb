FactoryBot.define do
    factory :info do
      user
  
      username { "example_username" }
      nome { "Example Name" }
      foto { "example.jpg" }
      bio { "This is a sample bio." }
      certificazione { "Certified" }
      tipo { 1 }
    end
  end