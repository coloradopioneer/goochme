Rails.application.routes.draw do

	root 'pages#login'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/login', to: 'pages#login'

  resources :games
end