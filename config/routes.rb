Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard'
  resources :restaurants, only: [:index, :new, :create, :show, :edit, :update, :destroy]
end
