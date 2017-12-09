Rails.application.routes.draw do
  get 'merchant_sites/show'

  resources :campaigns do
    resources :site_accounts, shallow: true
    resources :merchant_sites, shallow: true
    resources :tasks, shallow: true
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
