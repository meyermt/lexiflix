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

  post '/results' => 'results#create'
  get '/results' => 'results#index'
  get '/results/:id' => 'results#show'

  get '/words/:word' => 'words#show'

  resources :users
  resources :videos

end
