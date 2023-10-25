Rails.application.routes.draw do
  resources :follows
  resources :infos
  resources :comments
  resources :posts
  devise_for :users
  as :user do
    get "users/signin", to: 'dev/sessions#new'
    get "users/sign_out", to: 'devise/sessions#destroy'
    get 'users/signup', to: 'devise/registrations#new'
    get 'users/:id', to: 'users#show', as: 'user'
  get'feed', to:'feed#show'
 
  
  end

  root 'pages#home'
  
  get 'add_infos' => 'infos#new'
  get 'info_user' => 'infos#show'
  get 'home' => 'pages#home'
  get 'infos/ruolorender'
  get 'follow/destroy' => 'follows#destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
