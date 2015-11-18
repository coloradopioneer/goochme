Rails.application.routes.draw do

	root 'pages#home'
  get '/about', to: 'pages#about'
  get '/login', to: 'pages#login'

  resources :games

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end