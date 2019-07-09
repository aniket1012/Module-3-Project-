Rails.application.routes.draw do
  resources :users
  resources :scores
  resources :questions, only: [:index, :create, :show]
  resources :rounds
  resources :categories, only: [:index, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
