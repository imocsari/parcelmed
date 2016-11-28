Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"
require "sidekiq/web"
  authenticate :user, lambda { |u| u.admin } do
    mount Sidekiq::Web => '/sidekiq'
  end

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  ActiveAdmin.routes(self)
  devise_for :users
  root to: 'pages#home'
  resources :users, except: [:show, :new, :create, :destroy]
  get '/dashboard', to: 'profile#dashboard'
  get '/settings', to: 'profile#dashboard_edit'
  resources :couriers
  resources :bookings do
    resources :payments, only: [:new, :create]
  end

  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
end
