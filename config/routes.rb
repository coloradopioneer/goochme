Rails.application.routes.draw do

	root 'pages#home'
  get '/about', to: 'pages#about'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :games

  get 'signup', to: 'users#new'
  resources :users, except: [:new]
end