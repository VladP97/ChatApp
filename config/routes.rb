Rails.application.routes.draw do
  resources :rooms, only: [:show]
  resources :messages, only: [:create]

  mount API::Base, at: "/"

  get 'page/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'page#index'
end
