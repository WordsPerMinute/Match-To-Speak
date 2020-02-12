Rails.application.routes.draw do
  resources :items
  resources :matches
  resources :accounts

  post 'authenticate', to: 'authentication#authenticate'
  post 'register', to: 'registration#register'
end
