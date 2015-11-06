Rails.application.routes.draw do

	root 'pages#login'
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
end