Rails.application.routes.draw do
  resources :follows
  resources :infos do
    member do
      patch :certificate
    end
  end
  resources :comments
  resources :posts do
    resources :comments, only: [:new, :create] 
    member do
      post 'segnala'
    end
  end
  resources :segnalaziones, only: [:new, :create]
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  as :user do
    get "users/signin", to: 'dev/sessions#new'
    get "users/sign_out", to: 'devise/sessions#destroy'
    get 'users/signup', to: 'devise/registrations#new'
    get 'users/:id', to: 'users#show', as: 'user'
  get'feed', to:'feed#general'
  get 'feed/general', to: 'feed#general'
  get 'feed/sport', to: 'feed#sport'
  get 'feed/pop', to: 'feed#pop'
  get 'feed/othernews', to: 'feed#othernews'
  
  end

  root 'pages#home'

  get '/search', to: 'search#index'
  get 'add_infos' => 'infos#new'
  get 'info_user' => 'infos#show'
  get 'home' => 'pages#home'
  get 'infos/ruolorender'
  get 'follow/destroy' => 'follows#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
