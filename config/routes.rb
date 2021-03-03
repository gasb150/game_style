Rails.application.routes.draw do
  devise_for :users
  
  resources :categories
  resources :users
  resources :articles do
  resources :votes, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "categories#index"
end
