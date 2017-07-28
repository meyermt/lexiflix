Rails.application.routes.draw do

  root 'intro#index'

  # Sessions

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  resources :users
  resources :videos
  resources :words

end
