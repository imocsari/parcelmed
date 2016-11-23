Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:show, :new, :create, :destroy]
  get '/dashboard', to: 'users#dashboard'

  resources :bookings do
    resources :confirmation, only: [:index] do
      resources :payment, only: [:index]
    end
  end
end
