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
  get '/dashboard', to: 'profiles#dashboard'
  get '/usersettings', to: 'profiles#dashboard_edit'
  get '/userpayments', to: 'profiles#dashboard_payment'
  get '/userbookings', to: 'profiles#dashboard_booking'
  resources :profiles, only: [:update]
  resources :couriers
  resources :bookings do
    resources :payments, only: [:new, :create]
  end

  get "/about" => "pages#about"
  get "/contact" => "pages#contact"
end
