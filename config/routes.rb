Rails.application.routes.draw do
  require 'sidekiq/web'
  mount Sidekiq::Web => '/sidekiq', :constraints => AdminConstraint.new

  resources :checks
  resources :obcs
  resources :vendors
  root to: 'vendors#index'
end
