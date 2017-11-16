Rails.application.routes.draw do
  resources :billing_profiles
  resources :card_infos
  resources :shipping_addresses
  resources :billing_addresses
  mount RailsAdmin::Engine => '/backstage', as: 'rails_admin'
  resources :site_accounts
end
