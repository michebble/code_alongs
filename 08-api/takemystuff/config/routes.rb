Rails.application.routes.draw do

  # get '/sales/new', to: 'sales#new'
  # get '/sales/:id', to: 'sales#show'
  # post '/sales', to: 'sales#create'
  # delete '/sales/:id', to: 'sales#destroy'
  # get '/sales/:id/edit', to: 'sales#edit'
  # put '/sales/:id', to: 'sales#update'
  # get '/sales', to: 'sales#index'
  
  resources :sales

  get '/me', to: 'pages#me'

  get '/login', to: 'session#new' 
  post '/session', to: 'session#create'
  delete '/session', to: 'session#destroy'

  get '/about', to: 'pages#about_us'
  get '/', to: 'pages#home'

end
