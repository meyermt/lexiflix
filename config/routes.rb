Rails.application.routes.draw do

  root 'intro#index'

  # Sessions

  get '/sessions/new' => 'sessions#new', as: 'new_session'
  post '/sessions' => 'sessions#create'

  delete '/logout' => 'sessions#destroy'

  get '/resets/new' => 'resets#new'
  post '/resets' => 'resets#create'
  get '/resets/:id/edit' => 'resets#edit'
  patch '/resets/:id' => 'resets#update'

  resources :users
  resources :videos
  resources :words

end
