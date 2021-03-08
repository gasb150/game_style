Rails.application.routes.draw do
  get 'users', to: 'categories#index'
  get 'users/sing_up', to: 'users#new'
  devise_for :users
  resources :categories, only: %i[index show new create]
  resources :articles, only: %i[index show new create edit] do
    resources :votes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'categories#index'
end
