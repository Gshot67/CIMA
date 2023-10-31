FactoryBot.define do
    factory :comment do
      association :post, factory: :post # Assumendo che tu abbia una factory 'post' definita per il modello Post
      content { "Contenuto di esempio del commento" }
      association :user, factory: :user # Assumendo che tu abbia una factory 'user' definita per il modello User
    end
  end