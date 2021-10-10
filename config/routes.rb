Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'sessions#home'
  resources :sessions
  resources :users, only: [:new, :create, :edit, :update, :show, :destroy] do
    resources :challenges
  end

  resources :games
  resources :challenges
  resources :goals

  get '/signup', to: 'users#new'
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  get '/newmatch', to: 'games#new'
  get '/challenges', to: 'challenges#forum'
end
