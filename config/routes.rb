Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'
  root 'static_pages#home'
  get 'static_pages/home'
  get  '/signup',  to: 'users#new'
  get '/lps',    to: 'static_pages#lps', as: :lps

  resources :users

get '/login', to: 'sessions#new'
post '/login', to: 'sessions#create'
delete '/logout', to: 'sessions#destroy'


  
end

