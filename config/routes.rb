Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#home'
  get 'pages/home', to: 'static_pages#home'
  get 'pages/help', to: 'static_pages#help'
  get 'pages/iems', to: 'static_pages#iems'
  get 'pages/how-to-order', to: 'static_pages#order'
  get 'pages/technology', to: 'static_pages#technology'
  get 'pages/review', to: 'static_pages#review'
  get '/login', to: 'sessions#new'
  get '/signup', to: 'users#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users	
end
