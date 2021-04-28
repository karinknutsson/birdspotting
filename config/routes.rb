Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get 'about', to: 'pages#about'

  resources :birds do
    resources :spots, only: [ :index, :new, :create ]
  end

  get 'daily', to: 'birds#daily', as: :daily_bird

  resources :reviews, only: [ :show, :edit, :update, :destroy ]
end
