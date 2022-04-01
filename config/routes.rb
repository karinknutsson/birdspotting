Rails.application.routes.draw do
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  root to: 'pages#home'

  get 'about', to: 'pages#about'

  resources :birds

  resources :users do
    resources :spots
  end

  get 'daily', to: 'birds#daily', as: :daily_bird
  get 'found', to: 'birds#found', as: :found
  get 'not_found', to: 'birds#not_found', as: :not_found
  get 'thanks', to: 'birds#thanks', as: :thanks

  get '/profile/:id', to: 'pages#profile', as: 'profile'
  get 'settings', to: 'pages#settings', as: 'settings'
  get '/life_list/:id', to: 'pages#life_list', as: 'life_list'
end
