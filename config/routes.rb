Rails.application.routes.draw do
  resources :obcs
  resources :vendors
  root to: 'visitors#index'
end
