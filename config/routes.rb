Rails.application.routes.draw do
  root to: 'pages#home'
  get '/dashboard', to: 'pages#dashboard', as: 'test'

  resources :restaurants do
    resources :reviews, only: [:new, :create]
    member do
      get 'chef'
    end
    collection do
      get 'top'
    end
  end
end
