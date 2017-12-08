Rails.application.routes.draw do
  get 'merchant_sites/show'

  resources :campaigns do
    resources :site_accounts
    resources :merchant_sites
    resources :tasks
  end

  resources :cart_attempts
  resources :tasks
  devise_for :users
  resources :billing_profiles
  resources :card_infos
  resources :shipping_addresses
  resources :billing_addresses
  mount RailsAdmin::Engine => '/backstage', as: 'rails_admin'
  resources :site_accounts
end
