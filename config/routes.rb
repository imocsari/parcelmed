Rails.application.routes.draw do

require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount Attachinary::Engine => "/attachinary"
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, except: [:show, :new, :create, :destroy]
  get '/dashboard', to: 'profile#dashboard'
  get '/settings', to: 'profile#dashboard_edit'
  resources :couriers
  resources :bookings do
    resources :confirmation, only: [:index] do
      resources :payment, only: [:index]
    end
  end

  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
end
