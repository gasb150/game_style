Rails.application.routes.draw do
  #get 'articles', to: 'categories#index'
  devise_for :users
  resources :categories, only: %i[index show new create]
  resources :articles, only: %i[index show new create edit destroy update ]   do
  resources :votes, only: %i[create destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root "categories#index"

end
