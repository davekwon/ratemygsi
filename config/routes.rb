Rails.application.routes.draw do
  devise_for :users
  resources :gsis
  root 'gsis#index'
end
