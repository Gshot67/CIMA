Rails.application.routes.draw do
  resources :infos
  resources :comments
  resources :posts
  devise_for :users
  as :user do
    get "users/signin", to: 'dev/sessions#new'
    get "users/signout", to: 'devise/sessions#destroy'
    get 'users/signup', to: 'devise/registrations#new'
    get 'users/:id', to: 'users#show', as: 'user'
  get'feed', to:'feed#show'
  
  end

  root 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
