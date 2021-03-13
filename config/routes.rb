Rails.application.routes.draw do
  get 'users', to: 'categories#index'
  get 'users/sing_up', to: 'users#new'
  devise_for :users
  resources :categories, only: %i[index show new create]
  resources :articles, only: %i[index show new create edit update] do
    resources :votes, only: %i[create destroy]
  end

  root 'categories#index'
end
