Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :birds

  resources :users do
    resources :spots, only: [ :index, :new, :create, :destroy ]
  end

  get 'daily', to: 'birds#daily', as: :daily_bird

  get '/users/:id', to: 'pages#profile', as: 'profile'
  get 'settings', to: 'pages#settings', as: 'settings'

  # resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
