Rails.application.routes.draw do
  root 'home#index'
  resources :categories
  resources :items
  get "/404" => "errors#not_found"
  get "/500" => "errors#internal_server_error"
end
