Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :atvs do
    resources :bookings, only: [:new,:create]
  end
  resources :bookings, only: [:update, :destroy, :index]
end
