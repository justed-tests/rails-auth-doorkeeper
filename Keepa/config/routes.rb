Rails.application.routes.draw do
  root to: 'pages#index'

  get 'pages/index'

  resources :users, only: [:create, :new]
  resources :sessions, only: [:create, :new, :destroy]

  delete '/logout', to: 'sessions#destroy', as: :logout
end
