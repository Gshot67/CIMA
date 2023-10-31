FactoryBot.define do
    factory :post do
      association :user, factory: :user # Assumendo che tu abbia una factory 'user' definita per il modello User
      tag { "Esempio di tag" }
      topic { "Esempio di topic" }
      content { "Contenuto di esempio del post." }
      titolo { "Esempio di titolo" }
      fonte_esterna { "Esempio di fonte esterna" }
      lingua { "Esempio di lingua" }
      editoriale { "Esempio di editoriale" }
    end
  end