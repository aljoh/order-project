Rails.application.routes.draw do
  root controller: :orders, action: :index
  resources :orders, only: [:index]
end
