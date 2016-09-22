Rails.application.routes.draw do
  devise_for :users

  root 'barbecues#index'

  get "/users/:id", to: "users#show"

  resources :barbecues, only: [ :index, :show, :new, :create ]
end
