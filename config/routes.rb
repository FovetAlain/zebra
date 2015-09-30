Rails.application.routes.draw do
  root 'home#index'
  resources :categories
  resources :items
end
