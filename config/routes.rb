Rails.application.routes.draw do
  get 'carts/show'

  get 'order_items/create'

  get 'order_items/update'

  get 'order_items/destroy'

  root 'home#index'
  resources :categories, only: [:index, :show, :new, :create]
  resources :items, only: [:show, :new, :create]
  resources :order_items, only: [:create, :update, :destroy]
  resource :cart, only: [:show]
  resources :users
  resources :user_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'user_sessions#new'
  get 'logout' => 'user_sessions#destroy'

  get "/404" => "errors#not_found"
  get "/500" => "errors#internal_server_error"
end
