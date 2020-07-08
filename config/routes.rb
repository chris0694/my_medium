Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :stories

  get '@:username/:story_id', to: 'pages#show', as: 'story_page'
  get '@:username', to: 'pages#user', as: 'user_page'

  root 'pages#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
