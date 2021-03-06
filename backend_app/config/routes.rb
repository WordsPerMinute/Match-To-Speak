Rails.application.routes.draw do
  resources :items
  resources :matches
  resources :accounts

  post 'create_teacher_matches', to: 'matches#find_and_create_teacher_matches'
  post 'create_learner_matches', to: 'matches#find_and_create_learner_matches'
  post 'account_login', to: 'accounts#login'
  post 'account_update', to: 'accounts#update'
  post 'authenticate', to: 'authentication#authenticate'
  post 'register', to: 'registration#register'
end
